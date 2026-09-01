#!/usr/bin/env bash
set -euo pipefail

ZIP_FILE="${1:-$HOME/code/packaging-backup.zip}"

if [ ! -f "$ZIP_FILE" ]; then
    echo "❌ Error: Backup zip not found at: $ZIP_FILE"
    echo "Usage: ./restore_packaging_keys.sh [path_to_packaging-backup.zip]"
    exit 1
fi

# Decrypt into an ephemeral sandbox directory to avoid leaving unencrypted artifacts on disk on error
RESTORE_DIR=$(mktemp -d)
trap 'rm -rf "$RESTORE_DIR"' EXIT

echo "=== KKFetch Packaging Keys Restore Helper ==="
echo "Unzipping $ZIP_FILE..."
unzip "$ZIP_FILE" -d "$RESTORE_DIR"

# 1. Restore GPG Key: imports and merges private/public keys directly into ~/.gnupg keyrings without overwriting unrelated keys
for asc_file in "$RESTORE_DIR"/*.asc; do
    if [ -f "$asc_file" ]; then
        echo "Importing GPG signing key from $(basename "$asc_file")..."
        gpg --import "$asc_file"
    fi
done

# 2. Restore Copr Config: enforce user-only read/write (0600) mask to prevent local multi-user token disclosure
if [ -f "$RESTORE_DIR/copr-config.backup" ]; then
    echo "Restoring Copr API config to ~/.config/copr..."
    mkdir -p "$HOME/.config"
    cp "$RESTORE_DIR/copr-config.backup" "$HOME/.config/copr"
    chmod 600 "$HOME/.config/copr"
fi

# 3. Restore SSH Keys: OpenSSH client enforces strict POSIX file permissions (rejects keys if group/world accessible)
# Directory requires 0700 (rwx------), private key requires 0600 (rw-------), public key requires 0644 (rw-r--r--)
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

