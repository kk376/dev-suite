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
