#!/usr/bin/env bash
set -euo pipefail

BACKUP_DEST="${1:-/media/Backup/Fedora_Full_Backup_$(date +%Y-%m-%d)}"
mkdir -p "$BACKUP_DEST/credentials"

echo "========================================================="
echo "   🛡️ Fedora Comprehensive System & Work Backup"
echo "   Target: $BACKUP_DEST"
echo "========================================================="

# 1. Credentials, Keys & Git Identity
echo ""
echo "[1/4] Backing up SSH, GPG, Copr & Git credentials..."
if [ -d "$HOME/.ssh" ]; then
    cp -r "$HOME/.ssh" "$BACKUP_DEST/credentials/"
    echo "  ✓ Copied ~/.ssh"
fi

GPG_KEY_ID=$(gpg --list-secret-keys --with-colons 2>/dev/null | awk -F: '/^sec:/ {print $5; exit}')
if [ -n "$GPG_KEY_ID" ]; then
    gpg --export-secret-keys --armor "$GPG_KEY_ID" > "$BACKUP_DEST/credentials/gpg_secret_keys.asc"
    gpg --export --armor "$GPG_KEY_ID" > "$BACKUP_DEST/credentials/gpg_public_keys.asc"
    gpg --export-ownertrust > "$BACKUP_DEST/credentials/gpg_ownertrust.txt"
    echo "  ✓ Exported GPG secret/public keys and trust database"
fi

if [ -f "$HOME/.config/copr" ]; then
    cp "$HOME/.config/copr" "$BACKUP_DEST/credentials/copr-config.backup"
    echo "  ✓ Copied Copr API config"
fi

if [ -f "$HOME/.gitconfig" ]; then
    cp "$HOME/.gitconfig" "$BACKUP_DEST/credentials/gitconfig.backup"
    echo "  ✓ Copied ~/.gitconfig"
fi

if [ -f "$HOME/.dput.cf" ]; then
    cp "$HOME/.dput.cf" "$BACKUP_DEST/credentials/"
    echo "  ✓ Copied ~/.dput.cf (Ubuntu PPA dput config)"
fi

if [ -d "$HOME/.config/gh" ]; then
    cp -r "$HOME/.config/gh" "$BACKUP_DEST/credentials/"
    echo "  ✓ Copied ~/.config/gh (GitHub CLI auth)"
fi

# 2. Encrypted packaging keys archive
echo ""
echo "[2/4] Creating encrypted packaging-backup.zip..."
STAGE_DIR=$(mktemp -d)
trap 'rm -rf "$STAGE_DIR"' EXIT
cp "$BACKUP_DEST/credentials/gpg_secret_keys.asc" "$STAGE_DIR/packaging-gpg-keys.asc" 2>/dev/null || true
cp "$HOME/.config/copr" "$STAGE_DIR/copr-config.backup" 2>/dev/null || true
cp "$HOME/.ssh/id_ed25519" "$STAGE_DIR/id_ed25519" 2>/dev/null || true
cp "$HOME/.ssh/id_ed25519.pub" "$STAGE_DIR/id_ed25519.pub" 2>/dev/null || true
rm -f "$BACKUP_DEST/packaging-backup.zip"
(cd "$STAGE_DIR" && zip -e "$BACKUP_DEST/packaging-backup.zip" ./*)
echo "  ✓ Encrypted zip created at $BACKUP_DEST/packaging-backup.zip"

# 3. Code Repositories (Excluding compiled Rust/Node build artifacts to save 126GB)
echo ""
echo "[3/4] Archiving code repositories (~/code, excluding build target/ & node_modules/)..."
tar --exclude="target" \
    --exclude="node_modules" \
    -czf "$BACKUP_DEST/code_projects.tar.gz" \
    -C "$HOME" code
echo "  ✓ Code projects archived to $BACKUP_DEST/code_projects.tar.gz"

# 4. Antigravity Brain & Context (~/.gemini)
echo ""
echo "[4/4] Archiving Antigravity Brain & Session Context (~/.gemini)..."
tar -czf "$BACKUP_DEST/gemini_brain_and_context.tar.gz" \
    -C "$HOME" .gemini
echo "  ✓ Antigravity brain archived to $BACKUP_DEST/gemini_brain_and_context.tar.gz"

echo ""
echo "========================================================="
echo "   ✅ Backup Complete!"
echo "   Location: $BACKUP_DEST"
echo "========================================================="
ls -lh "$BACKUP_DEST"
