#!/usr/bin/env bash
set -euo pipefail

echo "=== Installing Git Guardrails ==="

HOOKS_DIR=".git/hooks"
if [ ! -d "$HOOKS_DIR" ]; then
  echo "Error: Not a git repository or no .git/hooks directory found."
  exit 1
fi

PRE_PUSH_HOOK="$HOOKS_DIR/pre-push"

cat << 'EOF' > "$PRE_PUSH_HOOK"
#!/usr/bin/env bash
set -euo pipefail

current_branch=$(git symbolic-ref --short HEAD 2>/dev/null || echo "detached")

if [ "$current_branch" = "main" ] || [ "$current_branch" = "master" ]; then
  echo "❌ Direct push to '$current_branch' is blocked by guardrails."
  echo "Please create a feature branch and open a PR."
  exit 1
fi
EOF

chmod +x "$PRE_PUSH_HOOK"
echo "✅ Git pre-push guardrail installed at $PRE_PUSH_HOOK"
