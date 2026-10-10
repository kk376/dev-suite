# Interactive Bash Wizards & Scripting (`wizard`)

## When to Generate a Wizard
For manual, human-only tasks:
- Provisioning cloud infrastructure (AWS, GCP, Vercel).
- Setting up OAuth clients, Stripe API keys, or webhooks.
- Navigating third-party vendor dashboards.
- One-off production database cutovers.

## Wizard Architecture Invariants

All interactive wizards generated under this standard must follow the blueprint provided in [`scripts/wizard_template.sh`](file:///home/kk376/code/dev-suite/.gemini/config/skills/engineer/scripts/wizard_template.sh):

1. **Whole-File Parse Encapsulation**: Enclose all stages inside a wrapper function (e.g. `run_wizard "$@"`) and place the execution call on the final line. This forces Bash to parse the complete script into memory before running the first interactive prompt, preventing script corruption if the file is modified or saved mid-run.
2. **Safe Secret Masking & Re-Use**: Use `read -s` for secret tokens so credentials never appear in terminal output or shell scrollbacks. Support Enter-keeps-current by parsing existing values with `_existing`, safely stripping outer single or double quotes without corrupting inner special characters.
3. **Atomic and Permissive Environment Upsert**: Write environment variables atomically using `mktemp` and enforce `umask 077` (mode 0600) to keep `.env` credentials locked to the current user. Preserve existing file modes when updating through symlinks. Export variables directly into the running subshell using `printf -v "$key" '%s' "$value"`.
4. **URL Automation**: Launch target vendor dashboards directly using `xdg-open` or `open` in background processes so the user never has to copy-paste URLs manually.
5. **Toolchain Integration**: Where GitHub CLI (`gh`) or platform CLIs are available, offer automated secret propagation to CI/CD pipelines (e.g. `gh secret set`) after local validation.
6. **Graceful Headless Degradation**: When standard output is not a terminal (e.g. piped execution), bypass terminal clears and color formatting to preserve readable debug logs.
