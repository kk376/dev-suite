# Two-Axis Code Review, Security Defense Gate & Fowler Smells Catalog

## The Three-Tier Review Architecture (`code-review`)

Run two parallel, isolated review passes on the diff (`git diff <target-branch>...HEAD`), backed by an absolute Security Defense Gate:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           THREE-TIER CODE REVIEW                            │
├──────────────────────────────────────┬──────────────────────────────────────┤
│ 1. STANDARDS & DEFENSE AXIS          │ 2. SPEC & CONTRACT AXIS              │
│ - Zero warnings / zero lint errors   │ - Full acceptance criteria met       │
│ - Deep module design verified        │ - Zero missing edge cases            │
│ - Fowler Code Smells check           │ - Zero unauthorized scope creep      │
│ - 17-Category Security Gate          │ - Out-of-scope boundaries respected  │
└──────────────────────────────────────┴──────────────────────────────────────┘
```

---

## The 17-Category Security Review Gate (`security-check`)

Every diff touching network, database, auth, or input processing must pass all 17 security invariants:

1. **SECRETS_EXPOSURE**: Zero hardcoded secrets, tokens, or private keys; `.env` git-ignored.
2. **DATABASE_ACCESS**: RLS enabled with default deny; explicit `auth.uid()` scoping; zero unsafe deserialization.
3. **AUTH_MIDDLEWARE**: Fail-closed auth middleware running *before* handler dispatch.
4. **ACCESS_CONTROL (IDOR)**: Mandatory tenant ownership check `current_user.id == resource.owner_id` on all resource IDs.
5. **FRONTEND_SECRETS**: Client-server boundary isolated; zero private keys in `src/`, `app/`, or public env vars.
6. **SSRF**: Pre-flight DNS resolution; private IP blocklists (`127.0.0.0/8`, `10.0.0.0/8`, `169.254.169.254`).
7. **CSRF**: `SameSite=Lax/Strict` cookies; anti-CSRF token verification on state mutations.
8. **SECURITY_HEADERS**: CSP, HSTS, X-Frame-Options, X-Content-Type-Options, Referrer-Policy.
9. **CORS**: Explicit domain allowlist; zero `origin: '*'` with `credentials: true`.
10. **RATE_LIMITING**: Brute force protection on auth/sensitive routes; proxy-trust configured.
11. **SQL_INJECTION**: 100% Parameterized queries or ORM methods; zero string interpolation.
12. **XSS**: DOMPurify sanitization on rich text; auto-escaping enabled on template engines.
13. **PAYMENT_WEBHOOKS**: Stripe cryptographic signature verification; atomic idempotency tracking.
14. **FILE_UPLOADS**: Magic-byte MIME verification; server-side UUID renaming; isolated storage bucket.
15. **ERROR_HANDLING**: Generic production error responses; zero leaked stack traces or SQL strings.
16. **PASSWORD_HASHING**: Argon2id, bcrypt (>= 12), or scrypt only; zero MD5/SHA-1/plain SHA-256.
17. **DEPENDENCIES**: Official registry verification; pinned versions; lockfiles committed; zero CVEs.

---

## Fowler Code Smells Checklist
- **Feature Envy**: A method that accesses the data of another object more than its own. (Fix: Move method).
- **Primitive Obsession**: Using raw primitives (strings, numbers) instead of typed value objects/domain types (e.g. `UserId`, `Email`, `Money`).
- **Data Clumps**: Groups of fields/parameters frequently passed together. (Fix: Extract class or interface).
- **Shotgun Surgery**: Making a single conceptual change requires edits across 10 different files. (Fix: Consolidate module boundary).
- **Divergent Change**: A single module is changed for many unrelated reasons. (Fix: Split responsibilities).
- **Speculative Generality**: Hooks, parameters, or abstractions built for hypothetical future requirements. (Fix: YAGNI - remove).
- **Mysterious Name**: Unclear variables, functions, or types that fail to use `CONTEXT.md` vocabulary.

---

## The Silent Failure & Deceptive Fallback Audit

AI generated code frequently disguises real bugs under the veneer of "resilience". Every code review must actively hunt and eradicate these deceptive patterns:

1. **Empty Catch Blocks**: Catching an error and doing nothing:
   ```typescript
   // BANNED: Silent failure
   try { doWork(); } catch (e) {}

   // REQUIRED: Log with context or handle explicitly
   try { doWork(); } catch (error) { logger.warn({ error, orderId }, "Work step failed"); }
   ```
2. **Deceptive Empty Fallbacks**: Catching an error and returning an empty list, null, or fallback default that hides downstream failures:
   ```typescript
   // BANNED: Masking database or network collapse
   const users = await fetchUsers().catch(() => []);

   // REQUIRED: Fail loudly or return a typed Result error
   ```
3. **Lost Stack Traces & Cause Erasure**: Rethrowing a generic error without chaining the original cause:
   ```typescript
   // BANNED: Loses upstream stack trace
   catch (err) { throw new Error("Payment failed"); }

   // REQUIRED: Preserve cause
   catch (err) { throw new Error("Payment failed", { cause: err }); }
   ```
4. **Unhandled Partial Writes**: Performing state changes across multiple steps without a database transaction or explicit compensation/rollback handler.

---

## Adversarial Dual-Review Convergence Loop ("Santa Method")

For mission-critical deliverables, high-risk security code, or production releases, eliminate single-agent confirmation bias using independent dual review:

```
┌─────────────┐
│  GENERATOR  │  Phase 1: Produce Implementation or Diff
└──────┬──────┘
       │ output diff
       ▼
┌──────────────────────────────┐
│   INDEPENDENT DUAL REVIEW    │  Phase 2: Reviewers B & C
│  ┌───────────┐ ┌───────────┐ │  Identical rubric,
│  │Reviewer B │ │Reviewer C │ │  ZERO shared context
│  └─────┬─────┘ └─────┬─────┘ │
└────────┼──────────────┼──────┘
         │              │
         ▼              ▼
┌──────────────────────────────┐
│         VERDICT GATE         │  Phase 3: Both must PASS
│   B: PASS  AND  C: PASS      │
└──────┬──────────────┬────────┘
       │ PASS         │ FAIL
       ▼              ▼
   [ SHIP ]     ┌─────────────┐
                │  FIX CYCLE  │  Phase 4: Aggregate issues, fix, re-review
                └─────────────┘
```

1. **Context Isolation**: Reviewer B and Reviewer C are launched as parallel subagents. Neither reviewer sees the other's assessment or scratchpad.
2. **Identical Rubric**: Both evaluate against the Two-Axis standards (Standards & Security + Spec Acceptance Criteria).
3. **Strict Pass Gate**: If either reviewer flags a `FAIL` or critical issue, the code cannot ship. The findings are merged, remediated by the implementer, and both reviewers run a second pass until convergence.

---

## The Surgical Diff & Anti-Speculative Review Audit

Every code review pass must inspect the raw `git diff` for unprompted scope creep and speculative complexity:

1. **Diff Hygiene & Traceability**:
   - Verify every modified line maps 1:1 to an explicit acceptance criterion or bug fix. Reject diffs with drive-by reformatting, whitespace churn, or unprompted comment rewrites.
   - Verify zero modification or deletion of unrelated pre-existing dead code.
   - Verify all orphaned imports, functions, or variables caused by this change have been removed.
2. **Anti-Speculative Simplicity Gate**:
   - Check for premature abstraction: Did the change introduce an abstract class, interface, or factory for code that only has one caller?
   - Check for speculative configurability: Were optional flags, unused settings, or "future-proofing" parameters added without being requested?
   - If 200 lines were added where 50 lines would achieve the same outcome without compromising correctness, request simplification.

---

## Working Tree Review Evidence Binding (`reviewFreshness`)

A code review is only valid for the exact working tree state that was inspected. When iterative edits or multi-agent workflows touch files after a review has started or completed, the review evidence is invalidated.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    WORKING TREE REVIEW BINDING LIFECYCLE                    │
├───────────────────────────────┬─────────────────────────────────────────────┤
│ 1. REVIEW START FINGERPRINT   │ Stamp wtree = git rev-parse HEAD^{tree} +   │
│                               │ working-tree dirty status before reading    │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 2. PASS EXECUTION             │ Run Standards and Spec axis checks          │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 3. CONVERGENCE & BINDING      │ If start wtree == end wtree: VERIFIED       │
│                               │ If content changed during pass: STALE       │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 4. SHIP / MERGE GATE          │ Pre-ship check: active wtree == bound wtree │
│                               │ If mismatch: block ship, require re-review  │
└───────────────────────────────┴─────────────────────────────────────────────┘
```

### Review Freshness Invariants
1. **Unambiguous Working Tree Fingerprint**:
   Before initiating review analysis, capture the tree hash:
   ```bash
   git rev-parse HEAD^{tree}
   git status --porcelain
   ```
2. **Freshness States**:
   - `CURRENT`: Review finished clean (zero open defects) on the exact working tree currently present on disk.
   - `STALE`: Working-tree content differs from the reviewed content (subsequent commits, edits, or file additions occurred).
   - `UNVERIFIED`: Incomplete pass, unresolved findings, or review conducted without a recorded start fingerprint.
3. **The Zero-Stale-Ship Gate**:
   Never merge or release code when review evidence is `STALE` or `UNVERIFIED`. Any modification made to address review feedback requires an updated pass that re-verifies the resulting tree.

---

## The Shared-Code Extraction Rubric (Anti-Speculative Helper Governance)

When considering extracting duplicated code into a shared helper or library, apply this 5-rule governance rubric to avoid premature coupling:

1. **Prove the Callers**:
   - Require at least two verified, first-party authored source locations (functions and line numbers).
   - Only an architectural planning review may consider proposed future callers, and those must be explicitly labeled as unverified assumptions.
   - Similar syntactic names or formatting alone do not establish equivalent behavior. Generated code, vendor code, and third-party copies do not qualify as callers.
2. **Reuse Before Extracting**:
   - Inspect existing helper modules, utility packages, and project dependencies first.
   - Compare behavior, inputs, outputs, error handling, side effects, security requirements, and runtime boundaries.
   - Preserve domain differences that callers genuinely need. Do not bridge separate microservices or isolated deployments without an established shared contract.
3. **Keep the Helper Small**:
   - Specify the helper destination, explicit interface contract, callers to migrate, and smallest adoption sequence.
   - Ban option-heavy helpers (functions taking flags like `isUser`, `skipValidation`, `formatMode`). Avoid coupling unrelated components.
   - Explicitly define the blast radius: what breaks across callers if the shared helper fails?
4. **Account for the Whole Change (Net Code Math)**:
   - Account for lines removed versus lines added across implementation, tests, and call-site updates:
     $$\text{Net Savings} = \text{Lines Removed} - \text{Lines Added}$$
   - Count moved code on both sides. Exclude vendor or generated lines. If net savings are negative or negligible, the abstraction is not earning its keep.
5. **Rank Useful Changes**:
   - Prioritize concrete reliability gains and net savings over stylistic preference.
   - Reject similarities where contracts diverge, and reject abstractions whose maintenance overhead exceeds duplicate lines.

---

## Maintainability Specialist Review Checklist

In every review pass, audit for these non-functional code decay signals:

### 1. Dead Code and Unused Imports
- Variables assigned but never read in the modified files.
- Functions or methods defined but never invoked across the repository (verified via project-wide grep).
- Imports and requires that are no longer referenced after the change.
- Commented-out code blocks: must be removed outright.

### 2. Magic Literals and String Coupling
- Bare numeric literals used in business logic (thresholds, timeouts, retry limits, byte boundaries): extract to named constants.
- Error message strings used as conditionals or query filters elsewhere in the codebase.
- Hardcoded URLs, ports, or internal hosts that must be environment configuration.

### 3. Stale Comments and Docstrings
- Comments that describe previous behavior after the code was modified.
- TODO or FIXME comments referencing completed tasks or closed issues.
- Function docstrings with parameter lists that do not match the current signature.
- ASCII architectural diagrams in source comments that no longer match runtime flow.

### 4. Conditional Side Effects
- Control flow branching on a condition where one branch forgets a required side effect (e.g. cache invalidation, metric recording, or audit emission).
- Log messages claiming an operation succeeded when the operation was conditionally skipped.
- State transitions where one branch updates related records but alternative branches leave them orphaned.
- Event emissions that only fire on happy paths, leaving error and edge paths unrecorded.
