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
