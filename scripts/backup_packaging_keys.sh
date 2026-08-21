#!/usr/bin/env bash
set -euo pipefail

# Create an isolated staging workspace with default 0700 permissions to prevent
# unencrypted secret key leakage during intermediate export operations.
BACKUP_DIR=$(mktemp -d)
trap 'rm -rf "$BACKUP_DIR"' EXIT

echo "=== FerrisFetch Packaging Keys Backup Helper ==="
echo "Exporting keys and credentials to temporary secure workspace..."

# 1. Export ASCII-armored GPG secret subkeys used for RPM / Arch / Deb package signing
gpg --export-secret-keys --armor <maintainer-email@domain.com> > "$BACKUP_DIR/ferrisfetch-gpg-key.asc"

# 2. Back up Copr API credentials (required for remote Fedora Copr build authentication)
if [ -f "$HOME/.config/copr" ]; then
    cp "$HOME/.config/copr" "$BACKUP_DIR/copr-config.backup"
fi

# 3. Back up SSH Ed25519 keypair used for AUR git pushes and GitHub release automation
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

# Execute zip inside subshell cd to flatten archive path hierarchy and avoid storing host filesystem paths
(cd "$BACKUP_DIR" && zip -e "$OUTPUT_ZIP" *)

echo ""
echo "✅ Backup successfully created at: $OUTPUT_ZIP"
echo "👉 Action: Upload 'packaging-backup.zip' to your Google Drive or password manager."

