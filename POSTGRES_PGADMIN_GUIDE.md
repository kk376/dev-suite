# PostgreSQL 18 & pgAdmin 4 Setup Guide for Fedora Workstation

A comprehensive, production-grade guide for installing, initializing, and configuring **PostgreSQL 18** (via the official PGDG repository) and **pgAdmin 4 Desktop** on **Fedora Linux**.

---

## 🏗️ Architecture & Repository Strategy

| Component | Source Repository | Package Names | Notes |
| :--- | :--- | :--- | :--- |
| **PostgreSQL 18 Server** | Official PostgreSQL PGDG RPM Repo | `postgresql18-server`, `postgresql18`, `postgresql18-libs` | Upstream builds with latest point releases, isolated `/usr/pgsql-18/` directory structure, and independent systemd service (`postgresql-18.service`). |
| **pgAdmin 4 Desktop** | Official pgAdmin RPM Repo (`ftp.postgresql.org`) | `pgadmin4-fedora-repo`, `pgadmin4-desktop` | Standalone Qt/Python desktop application for database management and query analysis. |

---

## ⚡ Quick 1-Liner Automated Install

If you use [`fedora-post-install`](https://github.com/<github-user>/fedora-post-install), both PostgreSQL 18 and pgAdmin 4 are fully automated under the `dev` and `full` profiles:

```bash
./setup.sh --profile=dev
```

---

## 🛠️ Step-by-Step Manual Setup

### Step 1: Install PostgreSQL 18 from Official PGDG Repository

Fedora's base repositories often lag behind upstream PostgreSQL releases. Using the official PGDG repository guarantees you get the latest point releases directly from the PostgreSQL Global Development Group.

```bash
# 1. Add the official PostgreSQL PGDG repository (dynamically resolves Fedora version & architecture)
sudo dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/F-$(rpm -E %fedora)-$(uname -m)/pgdg-fedora-repo-latest.noarch.rpm

# 2. Install PostgreSQL 18 server, client tools, and libraries
sudo dnf install -y postgresql18-server postgresql18 postgresql18-libs
```

---

### Step 2: Initialize Database Cluster & Enable Service

Unlike Debian/Ubuntu, Red Hat & Fedora require initializing the database data cluster directory (`initdb`) before starting the service for the first time.

```bash
# 1. Initialize the PostgreSQL 18 database cluster at /var/lib/pgsql/18/data/
sudo /usr/pgsql-18/bin/postgresql-18-setup initdb

# 2. Enable and start PostgreSQL 18 systemd service immediately
sudo systemctl enable --now postgresql-18
```

#### Verify Service Status:
```bash
systemctl status postgresql-18 --no-pager
/usr/pgsql-18/bin/pg_isready
```
*Output should show `active (running)` and `/run/postgresql:5432 - accepting connections`.*

---

### Step 3: Add PostgreSQL 18 to System `$PATH`

The PGDG package places binaries under `/usr/pgsql-18/bin/` (e.g., `psql`, `pg_dump`, `createdb`). Add this path to your shell configuration so commands work directly:

#### For User Shell (`~/.zshrc` / `~/.bashrc`):
```bash
echo 'export PATH="/usr/pgsql-18/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

#### For System-Wide Profile (`/etc/profile.d/`):
```bash
sudo tee /etc/profile.d/pgsql18.sh > /dev/null <<'PEOF'
export PATH="/usr/pgsql-18/bin:$PATH"
PEOF
```

Verify your terminal can invoke `psql`:
```bash
psql --version
# Output: psql (PostgreSQL) 18.x
```

---

### Step 4: Set the `postgres` Superuser Password

By default, PostgreSQL allows local peer authentication for the system `postgres` user. Set a password for your superuser account:

```bash
# 1. Switch to the postgres system user
sudo su - postgres

# 2. Open PostgreSQL interactive shell
psql
```

Inside the `psql` prompt, run:
```sql
ALTER USER postgres WITH PASSWORD 'your_secure_password';
\q
```

Exit back to your standard user shell:
```bash
exit
```

---

### Step 5: Install pgAdmin 4 Desktop Client

pgAdmin 4 provides a full graphical UI for SQL queries, database design, schema inspection, and performance monitoring.

```bash
# 1. Add official pgAdmin 4 repository and import GPG key
sudo dnf install -y https://ftp.postgresql.org/pub/pgadmin/pgadmin4/yum/pgadmin4-fedora-repo-2-1.noarch.rpm

# 2. Install pgAdmin 4 Desktop application
sudo dnf install -y pgadmin4-desktop
```

Launch pgAdmin 4 from your application launcher or terminal:
```bash
pgadmin4
```

---

### Step 6: Connect pgAdmin 4 to Local PostgreSQL 18

When opening pgAdmin 4 on Linux for the first time, the `Servers` group in the left sidebar will be empty. Follow these steps to register your local PostgreSQL database:

1. In pgAdmin 4, right-click **`Servers`** in the left sidebar (Object Explorer).
2. Select **`Register`** ➔ **`Server...`**
3. In the **General** tab:
   - **Name**: `PostgreSQL 18` *(or any preferred label)*
4. In the **Connection** tab:
   - **Host name/address**: `localhost` *(or `127.0.0.1`)*
   - **Port**: `5432`
   - **Maintenance database**: `postgres`
   - **Username**: `postgres`
   - **Password**: `<your_secure_password>` *(the password set in Step 4)*
   - **Save password?**: **ON / Checked**
   - **Role & Service**: *Leave completely empty*
5. Click **`Save`**.

Your `PostgreSQL 18` server will now appear in your left sidebar tree with full access to databases, schemas, tables, and the Query Tool (`Alt + Shift + Q` or Tools ➔ Query Tool).

---

## ⚠️ Common Pitfalls & Troubleshooting

### 1. Warning: Do NOT Run `sudo dnf install postgresql-server` After Installing PGDG
- Running `sudo dnf install postgresql-server` will prompt DNF to **replace and downgrade** your official PGDG 18.6 installation with Fedora's older default package build (18.4), breaking your `postgresql-18.service` configuration. Always use `postgresql18-server` when updating via PGDG.

### 2. DNF Package Manager Lock Error
If DNF reports a lock error (`Waiting for a lock on the system repository...`), find and terminate the stuck process:
```bash
ps aux | grep dnf
sudo kill -9 <PID>
```

### 3. PostgreSQL Service Commands Quick Reference
```bash
# Check service status
sudo systemctl status postgresql-18

# Start / Stop / Restart service
sudo systemctl start postgresql-18
sudo systemctl stop postgresql-18
sudo systemctl restart postgresql-18

# View real-time database logs
sudo journalctl -u postgresql-18 -f
```
