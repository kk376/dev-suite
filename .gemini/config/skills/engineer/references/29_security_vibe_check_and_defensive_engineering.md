# Defensive Engineering, Zero-Trust Architecture & Vibe-Check Security Standard

## The Defensive Engineering Philosophy

AI coding assistants naturally optimize for **functional correctness** rather than **defensive security**. Independent research from Carnegie Mellon (*SusVibes*), Escape.tech (5,600+ AI-assisted applications scanned), and Georgia Tech reveals that while over 60% of generated code functions as intended, **less than 11% meets baseline enterprise security criteria**.

The Master Engineering Standard enforces a **Zero-Trust, Fail-Closed Security Architecture** across every codebase. Security is not an afterthought or an optional checklist; it is an architectural invariant embedded into discovery, domain modeling, TDD, code reviews, and deployment pipelines.

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                      THE 3-TIER DEFENSIVE ENGINEERING ARCHITECTURE                       │
├─────────────────────────────────────────────────────────────────────────────────────────┤
│ 1. INVARIANT PREVENTION RULES (Write Time)                                              │
│    - Zero-secret client boundary, Parameterized ORM queries, Fail-closed auth middleware │
├─────────────────────────────────────────────────────────────────────────────────────────┤
│ 2. AUTOMATED 17-CATEGORY AUDIT ENGINE (Review Time)                                     │
│    - Systematic codebase survey -> security/reports/ -> security/plans/ -> Verification │
├─────────────────────────────────────────────────────────────────────────────────────────┤
│ 3. ACTIVE PENETRATION & MANUAL VERIFICATION (Deploy Time)                               │
│    - IDOR tampering, direct REST anon probes, SSRF payload tests, CSRF exploit frames   │
└─────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## The 17 Universal Security Guardrails

### 1. SECRETS_EXPOSURE (Critical)
- **Invariant**: No plaintext API keys, database credentials, private certificates, or tokens may exist in source code, commit history, or public configs.
- **Rules**:
  - All credentials loaded strictly via server-side environment variables (`process.env`, `os.environ`, `std::env`).
  - `.env` must be explicitly present in `.gitignore` before the initial repository commit.
  - `.env.example` must contain only dummy placeholders (`sk_test_placeholder_xyz`), never real keys.
  - Scan for regex patterns during review: `sk_live_`, `sk_test_`, `AKIA[0-9A-Z]{16}`, `ghp_[0-9a-zA-Z]{36}`, `Bearer `, `BEGIN (RSA|OPENSSH|EC) PRIVATE KEY`.
  - Validate with `gitleaks detect --source . --verbose` and `git ls-files .env`.

### 2. DATABASE_ACCESS & ROW-LEVEL SECURITY (Critical)
- **Invariant**: Databases must enforce default-deny isolation at the storage engine layer.
- **Rules**:
  - PostgreSQL / Supabase: Enable **Row Level Security (RLS)** on every table (`ALTER TABLE <table> ENABLE ROW LEVEL SECURITY;`). Default policy: `DENY ALL`.
  - Scoped policies: Explicitly scope policies to `auth.uid() = user_id` or `auth.jwt() ->> 'tenant_id'`.
  - **Banned**: Never use `USING (true)` or `FOR ALL` without strict, authenticated `WHERE` filters.
  - Firebase / Firestore: Enforce `request.auth != null && request.auth.uid == resource.data.userId` on all collections.
  - Deserialization: Absolutely ban unsafe deserialization (`pickle.loads`, `yaml.unsafe_load`, `Marshal.load`, PHP `unserialize`). Use strict JSON schemas (Zod, Pydantic, Serde).

### 3. AUTH_MIDDLEWARE & PIPELINE DISPATCH (Critical)
- **Invariant**: Authentication must execute in a fail-closed middleware pipeline before request handler dispatch.
- **Rules**:
  - Protected endpoints must verify session tokens / JWT signatures in global or route-group middleware *before* handler execution.
  - Unauthenticated requests must immediately abort and return `401 Unauthorized`.
  - RBAC / Role-based routes must verify role claims (`current_user.has_role('admin')`) and return `403 Forbidden` on privilege mismatch.
  - Session cookies must enforce `httpOnly: true`, `secure: true`, `sameSite: 'lax'` (or `'strict'`).

### 4. BROKEN ACCESS CONTROL & IDOR PREVENTION (Critical)
- **Invariant**: Authentication does not imply authorization. Every resource request must verify tenant ownership.
- **Rules**:
  - Insecure Direct Object References (IDOR / BOLA) are banned. For every endpoint accepting a resource ID (`/api/documents/:id`, `/orders/{id}`), the query must explicitly filter by the authenticated actor:
    ```sql
    SELECT * FROM documents WHERE id = :id AND user_id = :current_user_id;
    ```
  - Both read operations (`GET`) and mutation operations (`POST`, `PUT`, `PATCH`, `DELETE`) must enforce tenant/owner boundaries.
  - Attempting to access or modify another tenant's resource must fail with `403 Forbidden` (or `404 Not Found` to prevent resource enumeration).

### 5. FRONTEND_SECRETS & CLIENT BOUNDARY ISOLATION (Critical)
- **Invariant**: The client bundle (browser, mobile app) is hostile territory. Never ship private credentials to the client.
- **Rules**:
  - Never place private API keys, database admin credentials, or signing secrets in client source trees (`src/`, `app/`, `components/`, `pages/`, `public/`).
  - Never assign private secrets to framework public environment variables (`NEXT_PUBLIC_*`, `VITE_*`, `REACT_APP_*`, `EXPO_PUBLIC_*`).
  - Client applications must only communicate with third-party privileged services (OpenAI, Stripe secret endpoints, AWS S3 admin) through internal server-side proxy routes.

### 6. SERVER-SIDE REQUEST FORGERY (SSRF) DEFENSE (High)
- **Invariant**: Any backend fetching user-supplied URLs must validate scheme, resolve DNS, and block private network ranges before dispatch.
- **Rules**:
  - Restrict schemes strictly to `http` and `https` (block `file://`, `gopher://`, `ftp://`, `data://`).
  - Pre-flight DNS resolution: Resolve hostname to IP addresses before initiating connection.
  - Block all private, loopback, link-local, and cloud metadata IP ranges:
    - Loopback: `127.0.0.0/8`, `::1`
    - Private RFC 1918: `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`
    - Link-Local & Cloud Metadata: `169.254.0.0/16`, `169.254.169.254` (AWS/GCP/Azure IMDS), `fd00::/8`
  - Disable automatic HTTP redirect following, or re-validate redirect destination IPs through the blocklist.

### 7. CROSS-SITE REQUEST FORGERY (CSRF) (High)
- **Invariant**: All state-changing requests (`POST`, `PUT`, `PATCH`, `DELETE`) must be protected against cross-origin forgery.
- **Rules**:
  - Session cookies must configure `SameSite=Lax` (or `Strict`) and `Secure=true`.
  - For cookie-authenticated SPAs or traditional forms, implement Anti-CSRF double-submit tokens or synchronize token patterns.
  - Reject requests where the `Origin` or `Referer` header does not match authorized application origins.

### 8. SECURITY HEADERS (Medium)
- **Invariant**: All HTTP responses must include defensive security headers configured via global middleware.
- **Headers Required**:
  ```http
  Content-Security-Policy: default-src 'self'; script-src 'self'; style-src 'self' 'unsafe-inline'; object-src 'none'; frame-ancestors 'none';
  Strict-Transport-Security: max-age=31536000; includeSubDomains; preload
  X-Frame-Options: DENY
  X-Content-Type-Options: nosniff
  Referrer-Policy: strict-origin-when-cross-origin
  Permissions-Policy: camera=(), microphone=(), geolocation=()
  ```
- Configure in Express via `helmet()`, in Next.js via `headers()` in `next.config.js`, or in FastAPI/Axum via dedicated header middleware.

### 9. CROSS-ORIGIN RESOURCE SHARING (CORS) (High)
- **Invariant**: Never configure wildcard `*` CORS policies on APIs handling user credentials.
- **Rules**:
  - Maintain an explicit, declarative allowlist of authorized frontend domain origins (e.g. `['https://app.example.com', 'https://staging.example.com']`).
  - Never combine `Access-Control-Allow-Origin: *` with `Access-Control-Allow-Credentials: true`.
  - Never reflect the incoming `Origin` request header back without explicit validation against the allowlist.

### 10. RATE LIMITING & BRUTE-FORCE DEFENSE (Medium)
- **Invariant**: Authentication and resource-intensive endpoints must enforce deterministic rate limits.
- **Rules**:
  - Auth endpoints (`/api/auth/login`, `/api/auth/register`, `/api/auth/reset-password`) must limit attempts (recommended: max 5–10 requests per 15-minute window per IP/account).
  - Return `429 Too Many Requests` with a standard `Retry-After` header when thresholds are exceeded.
  - Do not trust `X-Forwarded-For` blindly; configure proxy trust hops (`app.set('trust proxy', 1)`) to avoid client IP header spoofing.

### 11. SQL INJECTION & QUERY PARAMETERIZATION (High)
- **Invariant**: Zero raw string concatenation, template literals, or formatted strings in database queries.
- **Rules**:
  - All queries must use parameterized placeholders (`$1`, `?`, `:param`) or type-safe ORM/query builder abstractions (Prisma, Drizzle, SQLAlchemy, Diesel, sqlx).
  - Search and audit codebase for banned patterns:
    - Python: `f"SELECT ... {user_input}"`, `"... %s" % user_input`, `"...".format(user_input)`
    - JavaScript/TypeScript: `\`SELECT ... ${user_input}\``, `"SELECT ... " + user_input`
    - Rust: `format!("SELECT ... {}", user_input)`

### 12. CROSS-SITE SCRIPTING (XSS) DEFENSE (High)
- **Invariant**: All dynamic user-generated content must be escaped or sanitized before rendering into the DOM.
- **Rules**:
  - Avoid raw HTML rendering (`dangerouslySetInnerHTML`, `v-html`, `innerHTML`).
  - When rich text rendering is required (Markdown, HTML email previews), sanitize content with **DOMPurify** (or `ammonia` in Rust / `bleach` in Python) using strict element/attribute allowlists.
  - Ensure server-side template engines (Jinja2, Handlebars, Tera) have auto-escaping enabled.

### 13. PAYMENT WEBHOOK CRYPTOGRAPHIC VERIFICATION (High)
- **Invariant**: Payment provider webhooks (Stripe, LemonSqueezy, Paddle) must verify cryptographic signatures and enforce idempotency.
- **Rules**:
  - Use raw request payload bytes with the official SDK signature verifier (e.g. `stripe.Webhook.construct_event(payload, sig_header, webhook_secret)`).
  - Reject invalid or missing signatures with `400 Bad Request`.
  - Store processed webhook event IDs (`event.id`) in an atomic database store to prevent replay attacks and duplicate fulfillment.
  - Handle complete lifecycle events: `payment_intent.succeeded`, `invoice.payment_failed`, `customer.subscription.deleted`, `customer.subscription.past_due`.

### 14. SECURE FILE UPLOADS (Medium)
- **Invariant**: Never trust client-supplied filenames, extensions, or Content-Type headers.
- **Rules**:
  - Validate file content by inspecting **magic bytes** (file signatures) using libraries like `file-type` / `python-magic` / `infer`.
  - Generate random UUID filenames server-side (`crypto.randomUUID() + ".png"`), discarding original user filenames.
  - Store files on an isolated cloud object storage domain (AWS S3, Cloudflare R2, Google Cloud Storage) with private ACLs and pre-signed access URLs.
  - Enforce server-side size limits (e.g. max 5MB for avatars, 25MB for PDFs).

### 15. SECURE ERROR HANDLING & LEAK PREVENTION (Low/Medium)
- **Invariant**: Production error responses must never expose internal infrastructure details.
- **Rules**:
  - Implement a global catch-all error handling middleware.
  - Production responses must return opaque, generic error contracts: `{"error": "An unexpected error occurred", "code": "INTERNAL_SERVER_ERROR"}`.
  - Never leak stack traces, database schema details, file system paths, or library versions in API responses.
  - Disable debug mode / development diagnostic pages in production (`DEBUG = False`, `NODE_ENV = 'production'`).

### 16. CRYPTOGRAPHIC PASSWORD HASHING (Medium)
- **Invariant**: Passwords must be hashed using modern, memory-hard cryptographic key derivation functions.
- **Rules**:
  - Use **Argon2id** (preferred), **bcrypt** (work factor >= 12), or **scrypt**.
  - Absolutely ban weak algorithms: MD5, SHA-1, plain SHA-256, plain SHA-512, or unsalted hashes.
  - Delegate to hardened identity providers (Supabase Auth, Auth0, Clerk, Firebase Auth) when building standard web applications.

### 17. SUPPLY CHAIN INTEGRITY & PACKAGE SLOP DEFENSE (High)
- **Invariant**: Protect against hallucinated packages (slopsquatting), typo-squatting, and compromised dependencies.
- **Rules**:
  - Before installing any new dependency, verify that the package exists on the official registry (`npm`, `PyPI`, `crates.io`) with active maintainers, verifiable repository links, and healthy download statistics.
  - Pin exact dependency versions in production package manifests (`package.json`, `requirements.txt`, `Cargo.toml`).
  - Always commit lockfiles (`package-lock.json`, `poetry.lock`, `Cargo.lock`, `pnpm-lock.yaml`).
  - Run vulnerability audits in CI: `npm audit`, `pip-audit`, `cargo audit`.

---

## The AI Security Audit Protocol (`security-audit`)

When tasked with conducting a codebase security audit, follow the structured 5-phase loop:

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                           THE 5-PHASE SECURITY AUDIT LOOP                               │
└─────────────────────────────────────────────────────────────────────────────────────────┘
  1. INVESTIGATE ────► Comprehensive AST, regex, and route scanning across all source files
         │
  2. REPORT      ────► Generate security/reports/{CATEGORY}_REPORT.md with concrete findings
         │
  3. PLAN        ────► Generate security/plans/{CATEGORY}_PLAN.md with testable verification goals
         │
  4. IMPLEMENT   ────► Apply minimal, deep defensive architectural fixes
         │
  5. VERIFY      ────► Execute automated regression tests + update security/AUDIT_SUMMARY.md
```

### Report Format (`security/reports/{CATEGORY}_REPORT.md`)
```markdown
# {CATEGORY} Security Report

## Status: [CRITICAL | HIGH | MEDIUM | LOW | PASS | N/A]

## Findings
- File: `src/api/routes/user.ts` (Line 45)
- Description: Missing tenant ownership verification on document retrieval.
```typescript
// Vulnerable snippet:
const doc = await db.document.findUnique({ where: { id: req.params.id } });
```

## What's at Risk
An authenticated attacker can enumerate arbitrary document IDs and exfiltrate confidential data across tenants (IDOR / BOLA).

## What's Already Secure
- Authentication middleware correctly validates JWT signatures before handler invocation.

## Recommendations
1. Update database query to compound filter: `where: { id: req.params.id, userId: req.user.id }`.
2. Return `404 Not Found` if resource does not exist or belongs to another tenant.
```

### Plan Format (`security/plans/{CATEGORY}_PLAN.md`)
```markdown
# {CATEGORY} Fix Plan

## Changes
- `src/api/routes/user.ts` — Add `userId: req.user.id` filter to document retrieval query.
- `src/middleware/auth.ts` — Ensure `req.user` is strictly typed.

## Verification Goals
- [ ] Automated integration test: User A querying User B's document ID receives `404 Not Found`.
- [ ] Automated integration test: User A querying own document ID receives `200 OK` with payload.
- [ ] Codebase grep confirms zero single-predicate `findUnique({ where: { id } })` calls on tenant data.
```

---

## Active Manual Penetration Verification Checklist

Run these 10 manual verification probes before deploying to production:

```bash
# 1. Database Direct Anon Probe (Supabase/PostgreSQL)
curl -s -X GET "https://YOUR_PROJECT.supabase.co/rest/v1/users?select=*" \
  -H "apikey: YOUR_ANON_KEY"
# PASS: Returns [] or {"code": "42501", "message": "permission denied"}
# FAIL: Returns user data records

# 2. Unauthenticated API Route Replay
curl -s -I -X GET "https://yourapp.com/api/user/profile"
# PASS: HTTP/1.1 401 Unauthorized
# FAIL: HTTP/1.1 200 OK

# 3. Secret Leakage in Git History & Source
git ls-files .env
gitleaks detect --source . --verbose
grep -rnE "(sk_live_|sk_test_|AKIA[0-9A-Z]{16}|password\s*=\s*['\"][^'\"]+['\"])" src/ app/ 2>/dev/null
# PASS: Zero matches / Zero leaks found

# 4. IDOR / Cross-Tenant Access
curl -s -X GET "https://yourapp.com/api/documents/USER_B_DOC_ID" \
  -H "Authorization: Bearer USER_A_TOKEN"
# PASS: HTTP 403 Forbidden or HTTP 404 Not Found
# FAIL: HTTP 200 OK with User B document content

# 5. Client Bundle Secret Exposure
# Open browser DevTools -> Sources -> Search for 'sk_', 'AKIA', 'private_key', 'DATABASE_URL'
# PASS: Zero secret keys present in client JavaScript bundles

# 6. SSRF Internal IP Probe
curl -s -X POST "https://yourapp.com/api/fetch-url" \
  -H "Content-Type: application/json" \
  -d '{"url": "http://169.254.169.254/latest/meta-data/"}'
# PASS: HTTP 400 Bad Request (Blocked private IP)
# FAIL: Returns cloud instance metadata

# 7. CSRF Cross-Origin Form Replay
# Test state-changing endpoint with cross-origin POST form
# PASS: Request rejected with 403 or SameSite cookie suppressed
# FAIL: Mutation executes successfully

# 8. Security Headers Verification
curl -s -I "https://yourapp.com" | grep -iE "(content-security-policy|strict-transport|x-frame-options|x-content-type|referrer-policy)"
# PASS: All 5 defense headers present

# 9. CORS Wildcard Check
curl -s -I -H "Origin: https://evil-attacker.com" "https://yourapp.com/api/user/data" | grep -i "access-control-allow"
# PASS: Origin rejected or no access-control-allow-origin header
# FAIL: Access-Control-Allow-Origin: * or echoes back attacker origin with credentials

# 10. Dependency Vulnerability Audit
npm audit --production || pip-audit || cargo audit
# PASS: 0 vulnerabilities found
```
