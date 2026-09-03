# Merge Conflicts & Git Safety Guardrails

## Resolving Merge Conflicts (`resolving-merge-conflicts`)
- **Intent-Based Resolution**: Never guess line choices or blindly pick `--ours` / `--theirs`.
- **Trace Primary Sources**: Inspect the commit log of both branches (`git log -n 5 <branch>`) to understand the developer's original intent.
- **Hunk-by-Hunk Reconciliation**: Reconcile changes hunk by hunk preserving invariants from both sides.
- **Verification Gate**: Run compiler, linter, and full test suite before staging and finishing the merge/rebase. Never `--abort` when resolution is achievable.

---

## Git Safety Guardrails (`git-guardrails-claude-code`, `setup-pre-commit`)
- **Dangerous Commands Blocked**:
  - `git push --force` or `git push -f`
  - `git reset --hard` without stash
  - `git clean -fd`
  - Direct commits to `main` / `master`
- **Pre-commit Automation**: Husky + lint-staged running formatting (Prettier), typechecks (`tsc --noEmit`), and fast unit tests.
- **Agent Hook Interceptor (`block-dangerous-git.sh`)**:
  ```bash
  #!/usr/bin/env bash
  set -euo pipefail
  INPUT=$(cat)
  COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')
  DANGEROUS_PATTERNS=("git push" "git reset --hard" "git clean -fd" "git clean -f" "git branch -D" "push --force" "reset --hard")
  for pattern in "${DANGEROUS_PATTERNS[@]}"; do
    if echo "$COMMAND" | grep -qE "$pattern"; then
      echo "BLOCKED: '$COMMAND' matches dangerous pattern '$pattern'." >&2
      exit 2
    fi
  done
  exit 0
  ```

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



