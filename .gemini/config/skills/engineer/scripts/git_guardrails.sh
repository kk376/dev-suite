#!/usr/bin/env bash
set -euo pipefail

echo "=== Installing Git Safety Guardrails ==="

HOOKS_DIR=".git/hooks"
if [ ! -d "$HOOKS_DIR" ]; then
  echo "Error: Not a git repository or no .git/hooks directory found."
  exit 1
fi

PRE_PUSH_HOOK="$HOOKS_DIR/pre-push"
PRE_COMMIT_HOOK="$HOOKS_DIR/pre-commit"

# 1. Install pre-push hook: block direct pushes to main/master and detect hook bypasses
cat << 'EOF' > "$PRE_PUSH_HOOK"
#!/usr/bin/env bash
set -euo pipefail

current_branch=$(git symbolic-ref --short HEAD 2>/dev/null || echo "detached")

if [ "$current_branch" = "main" ] || [ "$current_branch" = "master" ]; then
  echo "[GUARDRAIL BLOCKED] Direct push to '$current_branch' is prohibited." >&2
  echo "Create a feature branch and open a pull request." >&2
  exit 1
fi
EOF
chmod +x "$PRE_PUSH_HOOK"
echo "[OK] Git pre-push guardrail installed at $PRE_PUSH_HOOK"

# 2. Install pre-commit hook: scan for tracked secrets and credential rename bypasses
cat << 'EOF' > "$PRE_COMMIT_HOOK"
#!/usr/bin/env bash
set -euo pipefail

# Scan staged tracked files for secrets and forbidden filenames
if [ -f "scripts/check_no_secrets.py" ]; then
  python3 scripts/check_no_secrets.py
fi
EOF
chmod +x "$PRE_COMMIT_HOOK"
echo "[OK] Git pre-commit guardrail installed at $PRE_COMMIT_HOOK"

# 3. Interceptor helper to check for Git hook redirect bypasses in command arguments
# Blocks: -c include.path=..., -c core.hookspath=..., --config-env=include.path=...,
# GIT_CONFIG_PARAMETERS, and env -S/--split-string wrappers.
check_command_evasions() {
  local cmd="$1"

  # Detect core.hookspath or include.path config overrides
  if echo "$cmd" | grep -qiE '(-c[[:space:]]*|--config-env=)(core\.hookspath|include\.path|includeif\..*\.path)'; then
    echo "[SECURITY VIOLATION] Attempt to override Git hook paths or includes: $cmd" >&2
    return 2
  fi

  # Detect GIT_CONFIG environment variable overrides
  if echo "$cmd" | grep -qiE 'GIT_CONFIG_(PARAMETERS|KEY|VALUE|COUNT)'; then
    echo "[SECURITY VIOLATION] Attempt to inject Git config parameters: $cmd" >&2
    return 2
  fi

  # Detect env split-string evasion targeting destructive or unverified git commands
  if echo "$cmd" | grep -qiE 'env[[:space:]]+(-S|--split-string).*git[[:space:]]+(commit|push).*(--no-verify|-f|--force)'; then
    echo "[SECURITY VIOLATION] Attempt to bypass Git verification via env split-string: $cmd" >&2
    return 2
  fi

  return 0
}

echo "=== Git Safety Guardrails active ==="
