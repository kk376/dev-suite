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

