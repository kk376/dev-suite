#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR=$(mktemp -d)
trap 'rm -rf "$BACKUP_DIR"' EXIT

echo "=== FerrisFetch Packaging Keys Backup Helper ==="
echo "Exporting keys and credentials to temporary secure workspace..."

# 1. Export GPG secret key
gpg --export-secret-keys --armor <maintainer-email@domain.com> > "$BACKUP_DIR/ferrisfetch-gpg-key.asc"

# 2. Copy Copr config
if [ -f "$HOME/.config/copr" ]; then
    cp "$HOME/.config/copr" "$BACKUP_DIR/copr-config.backup"
fi

# 3. Copy SSH keys (for AUR / GitHub)
if [ -f "$HOME/.ssh/id_ed25519" ]; then
    cp "$HOME/.ssh/id_ed25519" "$BACKUP_DIR/id_ed25519"
    cp "$HOME/.ssh/id_ed25519.pub" "$BACKUP_DIR/id_ed25519.pub"
fi

OUTPUT_ZIP="$HOME/code/packaging-backup.zip"
rm -f "$OUTPUT_ZIP"

echo ""
echo "Creating password-protected zip file at: $OUTPUT_ZIP"
echo "Please enter a strong password when prompted by zip:"
echo ""

(cd "$BACKUP_DIR" && zip -e "$OUTPUT_ZIP" *)

echo ""
echo "✅ Backup successfully created at: $OUTPUT_ZIP"
echo "👉 Action: Upload 'packaging-backup.zip' to your Google Drive or password manager."
