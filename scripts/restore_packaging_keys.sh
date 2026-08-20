#!/usr/bin/env bash
set -euo pipefail

ZIP_FILE="${1:-$HOME/code/packaging-backup.zip}"

if [ ! -f "$ZIP_FILE" ]; then
    echo "❌ Error: Backup zip not found at: $ZIP_FILE"
    echo "Usage: ./restore_packaging_keys.sh [path_to_packaging-backup.zip]"
    exit 1
fi

RESTORE_DIR=$(mktemp -d)
trap 'rm -rf "$RESTORE_DIR"' EXIT

echo "=== FerrisFetch Packaging Keys Restore Helper ==="
echo "Unzipping $ZIP_FILE..."
unzip "$ZIP_FILE" -d "$RESTORE_DIR"

# 1. Restore GPG Key
if [ -f "$RESTORE_DIR/ferrisfetch-gpg-key.asc" ]; then
    echo "Importing GPG signing key..."
    gpg --import "$RESTORE_DIR/ferrisfetch-gpg-key.asc"
fi

# 2. Restore Copr Config
if [ -f "$RESTORE_DIR/copr-config.backup" ]; then
    echo "Restoring Copr API config to ~/.config/copr..."
    mkdir -p "$HOME/.config"
    cp "$RESTORE_DIR/copr-config.backup" "$HOME/.config/copr"
    chmod 600 "$HOME/.config/copr"
fi

# 3. Restore SSH Keys
if [ -f "$RESTORE_DIR/id_ed25519" ]; then
    echo "Restoring SSH keys to ~/.ssh/..."
    mkdir -p "$HOME/.ssh"
    cp "$RESTORE_DIR/id_ed25519" "$HOME/.ssh/id_ed25519"
    cp "$RESTORE_DIR/id_ed25519.pub" "$HOME/.ssh/id_ed25519.pub"
    chmod 700 "$HOME/.ssh"
    chmod 600 "$HOME/.ssh/id_ed25519"
    chmod 644 "$HOME/.ssh/id_ed25519.pub"
fi

echo ""
echo "✅ All packaging keys and credentials restored successfully!"
echo "Run 'copr-cli whoami' and 'gpg -K' to verify."
