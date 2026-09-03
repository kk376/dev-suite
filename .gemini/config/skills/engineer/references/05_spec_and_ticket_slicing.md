# Specification & Tracer-Bullet Slicing

## Synthesizing Specifications (`to-spec`)

A spec captures the complete architectural agreement before code is written.

### Standard Spec Schema
1. **Problem Statement**: What user problem or capability is being addressed?
2. **Solution Overview**: High-level architectural approach from the user's perspective.
3. **User Stories & Acceptance Criteria**: Exhaustive numbered list:
   - *US-1*: As a `<role>`, I want `<capability>` so that `<value>`.
   - *Acceptance Criteria*: Verifiable binary checks.
4. **Architecture & Module Design**:
   - Seams, public interfaces, data contracts.
   - Deep module boundaries (no fragile line-number references).
5. **Testing Strategy**: Seam tests, unit tests, integration harnesses.
6. **Out of Scope (Non-Goals)**: Explicitly forbidden scope creep.
7. **Migration & Rollout Plan**: Expand-contract phases if touching existing live schemas/APIs.

---

## Tracer-Bullet Ticket Slicing (`to-tickets`)

### What is a Tracer Bullet?
A vertical slice cutting across every architectural layer:
`Database / Schema` $	o$ `Domain Core` $	o$ `API / Seam` $	o$ `UI / CLI` $	o$ `Automated Tests`.

### Ticket Sizing & Invariants
- **1 Context Window (~100k tokens)**: A single agent session must be able to complete the ticket with full tests.
- **Independently Verifiable**: Every ticket must leave the codebase in a compilable, green-test state.
- **Explicit Blocking DAG**: Declare blocking relationships (`Blocked by: #ticket-12`).

### The Expand–Contract Migration Pattern
For large refactors across many call sites:
```
Phase 1 (Expand):    Introduce new seam/API alongside old. Add deprecation notice.
Phase 2 (Migrate):   Migrate callers in isolated vertical batches (1 ticket per batch).
Phase 3 (Contract):  Remove old seam/API once zero callers remain.
```

---

## Brownfield Behavioral Spec Mining (`spec-mine`)

When onboarding a legacy or brownfield codebase without existing specifications, attempting to read dozens of source files blows the context window and yields superficial summaries. Use the structured **Sample and Expand** protocol to mine precise behavioral specifications.

### The Sample and Expand Strategy

```
Entry Points (Sample ~70%) ──► Trace Call Chains 1 Level (Expand) ──► External Boundary (Stop)
  (Routers, Facades, CLI)         (Domain Services, Logic)             (Database, Network)
```

1. **Phase 1: Group by Capability**: Identify cohesive clusters of entry points (e.g. `auth`, `billing`, `inventory`). Mine one capability at a time.
2. **Phase 2: Sample Entry Surfaces**: Read controllers, routers, and public API facades first. Most business requirements and validation gates originate here.
3. **Phase 3: Expand Along Call Chains**: Follow significant function calls one level down into the domain service layer. Stop when:
   - The chain reaches an I/O boundary (SQL query, external HTTP call, message queue).
   - Three consecutive functions yield no new business rules.
   - You reach 15 files examined for that capability.
4. **Phase 4: Defer Unread Files**: List remaining unexamined files in an explicit comment for follow-up passes.

### Flat Behavioral Representation (No Type Silos)
Avoid complex chapter hierarchies. Represent all mined behaviors as a flat list in two categories:

- **Requirements (`WHEN ... THEN ...`)**: Triggered state transitions, validations, and side effects.
  ```markdown
  ### Requirement: Expired Token Rejection
  - **id**: `AuthService.verifyToken`
  - **enforced**: `src/auth/service.ts:verifyToken()`
  - **test**: `tests/auth.test.ts:test_expired_token_fails`
  - **Behavior**: WHEN a JWT timestamp is older than current UTC time, THEN reject with `TOKEN_EXPIRED` (401) and emit audit event.
  ```
- **Invariants (`ALWAYS ...`)**: System truths that must hold universally.
  ```markdown
  ### Invariant: Non-Negative Account Balance
  - **id**: `Account.balance`
  - **enforced**: `src/domain/account.ts:withdraw()` + DB check constraint
  - **test**: `tests/account.test.ts:test_negative_balance_blocked`
  - **Behavior**: An account balance must ALWAYS be greater than or equal to zero.
  ```
