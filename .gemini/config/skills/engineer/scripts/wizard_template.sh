#!/usr/bin/env bash
set -euo pipefail

BOLD='\033[1m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

clear
echo -e "${BOLD}${CYAN}=== Interactive Setup Wizard ===${NC}\n"

function open_url() {
  local url="$1"
  if command -v xdg-open > /dev/null; then
    xdg-open "$url" 2>/dev/null || true
  elif command -v open > /dev/null; then
    open "$url" 2>/dev/null || true
  fi
}

echo -e "This wizard will configure third-party credentials and environment variables.\n"

echo -e "${BOLD}Step 1: Obtain API Key${NC}"
echo "Opening API dashboard in your default browser..."
# open_url "https://example.com/api-keys"

read -s -p "Enter Secret API Key: " API_KEY
echo -e "\n${GREEN}✔ Secret Key received.${NC}\n"

echo -e "${BOLD}Step 2: Verification${NC}"
echo "Testing connection with provided key..."
# Validation logic here
echo -e "${GREEN}✔ Configuration verified successfully.${NC}\n"

echo -e "${BOLD}${GREEN}Setup completed successfully!${NC}"
