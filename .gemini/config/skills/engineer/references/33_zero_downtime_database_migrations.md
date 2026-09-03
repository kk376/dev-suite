# Zero-Downtime Database Migrations & Schema Evolution

Database migrations in production are live surgeries on high-concurrency state. A locked table stops the entire application. Every schema change must be forward-compatible, non-blocking, and safely reversible without downtime.

---

## 1. The 5 Core Laws of Production Migrations

1. **Every Change is a Migration**: Never touch or alter production database schemas manually. If it did not happen via a versioned migration file in git, it did not happen.
2. **Forward-Only in Production**: Production rollbacks are always new forward migrations. Never run raw `DOWN` migrations against a live database with customer data.
3. **Separate DDL and DML**: Never mix schema changes (DDL: `CREATE`, `ALTER`, `DROP`) with data backfills (DML: `UPDATE`, `INSERT`, `DELETE`) in the same migration file. DDL acquires metadata locks; DML acquires row/table locks.
4. **All Additions Must Be Nullable or Have Fast Defaults**: Never add a `NOT NULL` column to an existing table without a default value.
5. **No Table Locks on Hot Tables**: Always use concurrent operations (`CREATE INDEX CONCURRENTLY`) and chunked batch updates (`FOR UPDATE SKIP LOCKED`).

---

## 2. The Expand-Contract (Parallel Run) Pattern

Never rename, alter type, or drop a column in a single deployment. Always use the 4-phase Expand-Contract lifecycle across consecutive deployments.

```
Phase 1 (Expand)       Phase 2 (Dual-Write)     Phase 3 (Cutover)        Phase 4 (Contract)
┌──────────────┐       ┌──────────────────┐     ┌──────────────────┐     ┌──────────────────┐
│ Add new col  │ ────► │ App writes both  │ ──► │ App reads new    │ ──► │ Drop old column  │
│ (nullable)   │       │ Backfill batches │     │ App writes new   │     │ from database    │
└──────────────┘       └──────────────────┘     └──────────────────┘     └──────────────────┘
  Migration 001            Deployment A             Deployment B             Migration 002
```

### Case Study: Renaming `username` to `display_name`

#### Step 1: Expand (Migration 001)
Add the new column as nullable. Zero lock contention, zero impact on running application code.

```sql
-- Migration: 001_add_display_name.sql
ALTER TABLE users ADD COLUMN display_name VARCHAR(255);
```

#### Step 2: Dual-Write Application Code (Deployment A)
Update the application domain model:
- Reads continue to read from `username`.
- Writes populate **both** `username` AND `display_name`.
Deploy this code. Now all new records have both fields populated.

#### Step 3: Batch Backfill (Background Worker or Script)
Backfill existing legacy rows in small, non-blocking chunks. Do not run a single massive `UPDATE users SET display_name = username` because it will lock millions of rows and stall queries.

```sql
-- Backfill script (run in batches of 5,000)
DO $$
DECLARE
  v_batch_size INT := 5000;
  v_rows_updated INT;
BEGIN
  LOOP
    UPDATE users
    SET display_name = username
    WHERE id IN (
      SELECT id FROM users
      WHERE display_name IS NULL AND username IS NOT NULL
      LIMIT v_batch_size
      FOR UPDATE SKIP LOCKED
    );
    GET DIAGNOSTICS v_rows_updated = ROW_COUNT;
    EXIT WHEN v_rows_updated = 0;
    PERFORM pg_sleep(0.05); -- Yield lock to web traffic
  END LOOP;
END $$;
```

#### Step 4: Cutover Reads (Deployment B)
Update application code:
- Reads switch entirely to `display_name`.
- Writes write only to `display_name`.
Deploy this code. Verify telemetry and error rates.

#### Step 5: Contract (Migration 002)
Drop the legacy column from the database.

```sql
-- Migration: 002_drop_legacy_username.sql
ALTER TABLE users DROP COLUMN username;
```

---

## 3. PostgreSQL Specific Production Invariants

### 1. Concurrent Index Creation
In PostgreSQL, standard `CREATE INDEX` acquires an `ACCESS EXCLUSIVE` lock, blocking all writes on the table until indexing completes.
- **Always use `CONCURRENTLY`**:
  ```sql
  -- CORRECT: Non-blocking, allows concurrent reads and writes
  CREATE INDEX CONCURRENTLY idx_users_email ON users (email);
  ```
- **Transaction Constraint**: `CREATE INDEX CONCURRENTLY` cannot run inside a multi-statement transaction block. Ensure your migration runner executes it with autocommit enabled (e.g. Prisma `/// @prisma-migration-isolation-mode(OutsideTransaction)`, Django `atomic = False`).

### 2. Adding Columns with Defaults (Postgres 11+)
- In Postgres 11 and later, `ALTER TABLE ... ADD COLUMN ... DEFAULT 'foo'` only updates the system catalog. It does **not** rewrite the table.
- However, if the default value is volatile (e.g. `DEFAULT random()`), Postgres must rewrite every row! Always use constant or immutable defaults.

### 3. Adding Foreign Key Constraints Without Locks
Adding a foreign key directly locks both the child and parent tables during validation.
Split it into two non-blocking steps:

```sql
-- Step 1: Add constraint without validating existing rows (instant catalog lock only)
ALTER TABLE orders
  ADD CONSTRAINT fk_orders_user_id
  FOREIGN KEY (user_id) REFERENCES users(id)
  NOT VALID;

-- Step 2: Validate concurrently without blocking writes
ALTER TABLE orders VALIDATE CONSTRAINT fk_orders_user_id;
```

### 4. Setting Statement Timeouts on Migrations
Never let a migration wait indefinitely for an exclusive lock, which creates a lock queue that blocks incoming read queries.
Always set a tight `lock_timeout`:

```sql
SET lock_timeout = '3s';
SET statement_timeout = '30s';
ALTER TABLE accounts ADD COLUMN status VARCHAR(32);
```

If the lock cannot be acquired within 3 seconds, the migration fails immediately, releasing queued connections.

---

## 4. Pre-Migration Verification Checklist

Before applying any migration to staging or production:

- [ ] Has DDL been isolated from DML?
- [ ] Are all new columns either nullable or populated with immutable defaults?
- [ ] Are all indexes created with `CONCURRENTLY` outside transactions?
- [ ] Are foreign keys added as `NOT VALID` and validated in a subsequent pass?
- [ ] Is `lock_timeout` explicitly set to prevent traffic pile-ups?
- [ ] Is there a tested forward migration rollback strategy?
- [ ] Has the migration been tested on a production-sized dataset (10M+ rows)?
