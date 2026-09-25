# Merge Conflicts & Git Safety Guardrails

## Resolving Merge Conflicts (`resolving-merge-conflicts`)
- **Intent-Based Resolution**: Never guess line choices or blindly pick `--ours` / `--theirs`.
- **Trace Primary Sources**: Inspect the commit log of both branches (`git log -n 5 <branch>`) to understand the developer's original intent.
- **Hunk-by-Hunk Reconciliation**: Reconcile changes hunk by hunk preserving invariants from both sides.
- **Verification Gate**: Run compiler, linter, and full test suite before staging and finishing the merge/rebase. Never `--abort` when resolution is achievable.

---

## Git Safety Guardrails & Two-Tier Command Matrix (`careful`, `guard`)

Uncontrolled execution of destructive terminal commands risks catastrophic data loss, wiped git trees, or accidental production outages. We enforce a strict two-tier interception model:

### The Two-Tier Command Matrix

| Tier | Policy | Target Command Patterns | Rationale |
| :--- | :--- | :--- | :--- |
| **HIGH Tier** | **Hard Deny** (Unconditional Block) | `rm -rf /`, `rm -rf ~`, `rm -rf $HOME`, `git push --force origin main`, `git push -f origin master` | Irreversible catastrophic loss; never permitted under any circumstances. |
| **MEDIUM Tier** | **Interactive Confirmation** (Requires Human Approval) | `git reset --hard`, `git checkout .`, `git restore .`, `git clean -fd`, `git clean -f`, `git branch -D`, `DROP TABLE`, `TRUNCATE`, `kubectl delete`, `docker rm -f`, `docker system prune`, non-default branch `push --force` | High-risk operations with potential data loss; must state exact blast radius and await explicit human confirmation. |
| **Safe Whitelist** | **Automatic Approval** (Zero Warning) | `rm -rf node_modules`, `rm -rf .next`, `rm -rf dist`, `rm -rf __pycache__`, `rm -rf .cache`, `rm -rf build`, `rm -rf target`, `rm -rf .turbo`, `rm -rf coverage` | Disposable build caches and compilation targets; routine clean operations. |

### Pre-Execution Interceptor Model (`check-careful.sh`)
```bash
#!/usr/bin/env bash
set -euo pipefail

INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

# 1. Check Safe Whitelist (disposable build artifacts)
SAFE_CACHE_REGEX='^rm[[:space:]]+(-[a-zA-Z]*r[a-zA-Z]*f?[[:space:]]+|--recursive[[:space:]]+)(node_modules|\.next|dist|__pycache__|\.cache|build|target|\.turbo|coverage)(/.*)?$'
if echo "$COMMAND" | grep -qE "$SAFE_CACHE_REGEX"; then
  exit 0
fi

# 2. HIGH Tier: Hard Deny
if echo "$COMMAND" | grep -qE '(rm[[:space:]]+-[a-zA-Z]*r.*[[:space:]]+(/|~|\$HOME)[[:space:]]*$|git[[:space:]]+push[[:space:]]+.*(-f|--force).*[[:space:]]+(main|master))'; then
  echo "HARD DENY: '$COMMAND' is an unrecoverable catastrophic operation." >&2
  exit 2
fi

# 3. MEDIUM Tier: Warn and Require Explicit Human Confirmation
MEDIUM_PATTERNS=(
  "git[[:space:]]+reset[[:space:]]+--hard"
  "git[[:space:]]+clean[[:space:]]+-f"
  "git[[:space:]]+checkout[[:space:]]+\\."
  "git[[:space:]]+restore[[:space:]]+\\."
  "DROP[[:space:]]+(TABLE|DATABASE)"
  "TRUNCATE"
  "kubectl[[:space:]]+delete"
  "docker[[:space:]]+system[[:space:]]+prune"
)

for pattern in "${MEDIUM_PATTERNS[@]}"; do
  if echo "$COMMAND" | grep -qiE "$pattern"; then
    echo "GATE WARNING: '$COMMAND' is destructive. Awaiting explicit confirmation." >&2
    exit 1
  fi
done

exit 0
```

### Quoted Destructive SQL & Shell Wrapper Interception (`sql-guard`)

Destructive SQL commands frequently evade simple regex filters when wrapped in quotation marks and passed as arguments to database client binaries, or when chained through shell wrappers.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    SQL CLIENT QUOTE & WRAPPER UNWRAPPING                    │
├─────────────────────────────────────────────────────────────────────────────┤
│ 1. UNWRAP LEADING WRAPPERS: sudo, doas, env (-C / --chdir / VAR=val), sh -c │
│ 2. DETECT TARGET SQL CLIENT: psql, mysql, mariadb, sqlite3, duckdb, pgcli   │
│ 3. STRIP DATA STRING LITERALS: Exclude 'literal', "ident", $$block$$        │
│ 4. INTERCEPT DESTRUCTIVE TOKENS: DROP TABLE/DATABASE, TRUNCATE, DELETE FROM │
└─────────────────────────────────────────────────────────────────────────────┘
```

1. **Target Database Clients**:
   The guard intercepts commands targeting `psql`, `postgres`, `mysql`, `mariadb`, `sqlite3`, `sqlite`, `sqlcmd`, `pgcli`, `mycli`, `duckdb`, and `bq`.
2. **Wrapper Peeling**:
   The interceptor peels leading wrapper layers (`sudo -u <user>`, `doas`, `env -i`, `env -C <dir>`, `VAR=value` assignments, and nested `sh -c` / `bash -c` strings) to resolve the real underlying binary.
3. **Literal Stripping Invariant**:
   To prevent false positives when reading or auditing data, the detector strips single-quoted string literals (`'...'`), double-quoted identifiers, and dollar-quoted blocks (`$$...$$` or `$tag$...$tag$`). For example:
   - `psql -c "DROP TABLE users"` is intercepted as destructive DDL.
   - `psql -c "SELECT 'drop table' FROM audit_log"` is permitted as a safe query.
   - `echo "DROP TABLE users"` is permitted as non-database prose.

---

## Mandatory Cryptographic Commit Signing (`git-signed-commits`)
- **Strict SSH Signing Standard**: All commits across all repositories must be cryptographically signed using the maintainer's SSH key (`git commit -S`). Unsigned commits are strictly prohibited.
- **Git SSH Configuration**:
  - Format: `gpg.format = ssh`
  - Signing Key: `user.signingkey = ~/.ssh/id_ed25519.pub` (or platform default)
  - Automatic Signing: `commit.gpgsign = true`
- **Non-Repudiation & Supply-Chain Authenticity**: Cryptographic commit signatures guarantee tamper-evidence and authorship authenticity on GitHub without third-party key server complexity.
- **History Integrity**: Existing signed commits must never be rewritten or re-signed using rebase/filter-branch/force-push; signing policy applies prospectively to preserve linear history integrity.

---

## CI/CD Pre-Push Simulation & Remote Verification Gate (`ci-check`, `gh-verify`)
- **Inspect `.github/workflows/` Before Pushing**: Read workflow YAML files to identify all checks, environment assumptions, and matrix OS targets.
- **Simulate Locally**:
  - Run all matrix targets locally (e.g. `cargo check --target ...`).
  - Run linters and shellcheck across all changed scripts and test files.
- **Verify on Remote**:
  - Always execute `gh run list --repo <user>/<repo>` and `gh run watch <id>` immediately after push.
  - Zero-Red-Pipeline Invariant: Never deliver a task or claim completion until remote CI displays `✓ completed success`.



