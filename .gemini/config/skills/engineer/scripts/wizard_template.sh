#!/usr/bin/env bash
# Production Interactive Setup Wizard Template
# Encapsulated, idempotent, and secure environment configuration.
set -euo pipefail

if [[ -t 1 ]] && command -v tput >/dev/null 2>&1 && [[ "$(tput colors 2>/dev/null || echo 0)" -ge 8 ]]; then
  BOLD=$(tput bold); DIM=$(tput dim); RESET=$(tput sgr0)
  BLUE=$(tput setaf 4); GREEN=$(tput setaf 2); YELLOW=$(tput setaf 3)
else
  BOLD=""; DIM=""; RESET=""; BLUE=""; GREEN=""; YELLOW=""
fi

ENV_FILE="${ENV_FILE:-.env}"
WRITTEN_ENV=()
SKIPPED=()

_clear() {
  [[ -t 1 ]] || return 0
  if command -v tput >/dev/null 2>&1 && tput clear 2>/dev/null; then return 0; fi
  printf '\033[2J\033[3J\033[H'
}

banner() {
  _clear
  printf '%s%s=== %s ===%s\n\n' "$BOLD" "$BLUE" "$1" "$RESET"
}

step() {
  printf '\n%s%s[%s]%s %s\n' "$BOLD" "$YELLOW" "$1" "$RESET" "$2"
}

stage() {
  local num="$1" total="$2" title="$3"
  banner "$title"
  printf '%sStage %d of %d%s\n' "$DIM" "$num" "$total" "$RESET"
  printf '%s%s%s\n\n' "$DIM" "──────────────────────────────────────────────────────" "$RESET"
}

open_url() {
  local url="$1"
  printf '  Opening: %s%s%s\n' "$DIM" "$url" "$RESET"
  if command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$url" >/dev/null 2>&1 &
  elif command -v open >/dev/null 2>&1; then
    open "$url" >/dev/null 2>&1 &
  fi
}

confirm() {
  local prompt="$1" reply=""
  printf '\n%s? %s [Y/n] %s' "$BOLD" "$prompt" "$RESET"
  read -r reply
  [[ -z "$reply" || "$reply" =~ ^[Yy] ]]
}

_existing() {
  [[ -f "$ENV_FILE" ]] || return 1
  local line value sq="'\\''"
  line=$(grep -E "^${1}=" "$ENV_FILE" | tail -n1) || return 1
  value="${line#*=}"
  if [[ "$value" == \'*\' ]]; then
    value="${value:1:${#value}-2}"
    value="${value//"$sq"/\'}"
  elif [[ "$value" == \"*\" ]]; then
    value="${value:1:${#value}-2}"
    [[ "$value" == *[\\\$\"]* ]] && return 1
  fi
  printf '%s' "$value"
}

ask_secret() {
  local key="$1" prompt="$2" current val=""
  current=$(_existing "$key" 2>/dev/null || true)
  if [[ -n "$current" ]]; then
    printf '  %s (press Enter to keep current value): ' "$prompt"
  else
    printf '  %s: ' "$prompt"
  fi
  read -r -s val
  printf '\n'
  if [[ -z "$val" && -n "$current" ]]; then
    val="$current"
  fi
  if [[ -z "$val" ]]; then
    printf '  %s[ERROR] Value cannot be empty.%s\n' "$YELLOW" "$RESET" >&2
    return 1
  fi
  printf '%s' "$val"
}

ask() {
  local prompt="$1" default="${2:-}" val=""
  if [[ -n "$default" ]]; then
    printf '  %s [%s]: ' "$prompt" "$default"
  else
    printf '  %s: ' "$prompt"
  fi
  read -r val
  val="${val:-$default}"
  printf '%s' "$val"
}

write_env() {
  local key="$1" value="$2" tmp sq="'\\''"
  [[ -e "$ENV_FILE" ]] || (umask 077 && : > "$ENV_FILE")
  tmp=$(mktemp "${ENV_FILE}.tmp.XXXXXX")
  grep -v -E "^${key}=" "$ENV_FILE" > "$tmp" 2>/dev/null || true
  printf "%s='%s'\n" "$key" "${value//\'/$sq}" >> "$tmp"
  cat "$tmp" > "$ENV_FILE"
  rm -f "$tmp"
  printf -v "$key" '%s' "$value"
  WRITTEN_ENV+=("$key")
  printf '  %s[SAVED]%s %s -> %s\n' "$GREEN" "$RESET" "$key" "$ENV_FILE"
}

set_secret() {
  local key="$1" value="$2"
  if command -v gh >/dev/null 2>&1 && gh auth status >/dev/null 2>&1; then
    if confirm "Set $key in GitHub Actions Secrets via gh CLI?"; then
      gh secret set "$key" --body "$value"
      printf '  %s[GH SECRET]%s %s set in GitHub repository\n' "$GREEN" "$RESET" "$key"
      return 0
    fi
  fi
  SKIPPED+=("$key (remote secret sync)")
}

finish() {
  _clear
  printf '%s%s=== Setup Complete ===%s\n\n' "$BOLD" "$GREEN" "$RESET"
  if [[ ${#WRITTEN_ENV[@]} -gt 0 ]]; then
    printf 'Configured keys in %s:\n' "$ENV_FILE"
    for k in "${WRITTEN_ENV[@]}"; do
      printf '  - %s\n' "$k"
    done
    printf '\n'
  fi
  if [[ ${#SKIPPED[@]} -gt 0 ]]; then
    printf '%sSkipped manual configurations:%s\n' "$YELLOW" "$RESET"
    for s in "${SKIPPED[@]}"; do
      printf '  - %s\n' "$s"
    done
    printf '\n'
  fi
}

run_wizard() {
  TOTAL_STAGES=1

  stage 1 "$TOTAL_STAGES" "Service Credentials Configuration"
  step 1 "Retrieve API Token"
  # open_url "https://dashboard.example.com/api-keys"

  local api_key
  api_key=$(ask_secret "EXAMPLE_API_KEY" "Enter API Key")
  write_env "EXAMPLE_API_KEY" "$api_key"

  finish
}

run_wizard "$@"
exit 0
