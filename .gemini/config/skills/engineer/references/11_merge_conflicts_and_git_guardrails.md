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
