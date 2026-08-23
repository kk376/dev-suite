# WSL2 (Ubuntu/Debian) to Native Fedora Workstation Migration Guide

A complete, battle-tested reference for dual-booting **Fedora Workstation** alongside **Windows** and seamlessly migrating your development environment, dotfiles, toolchains, SSH/GPG keys, and code repositories.

---

## 📦 1. Pre-Migration Backup Strategy (Inside WSL2)

Before installing Fedora, archive your core configuration directories directly to your shared Windows NTFS drive (e.g. `/mnt/c/Users/<windows-username>/WSL_Migration/`):

### A. Create Backup Staging Directory
```bash
MIGRATION_DIR="/mnt/c/Users/<windows-username>/WSL_Migration"
mkdir -p "${MIGRATION_DIR}/keys"
```

### B. Archive Repositories & Dotfiles
```bash
# 1. Archive code repositories
tar -czf "${MIGRATION_DIR}/code_projects.tar.gz" -C "$HOME" code

# 2. Archive shell dotfiles and terminal configs
tar -czf "${MIGRATION_DIR}/dotfiles.tar.gz" -C "$HOME" \
  .zshrc .bashrc .gitconfig .config/starship.toml

# 3. Archive SSH keypairs (preserve permissions)
tar -czf "${MIGRATION_DIR}/ssh_keys.tar.gz" -C "$HOME" .ssh
```

### C. Export GPG Keyring & Trust Database
Because GPG private keys require passphrase authentication on your terminal TTY, export them explicitly:
```bash
# Export private keys, public keys, and ownertrust database
gpg --export-secret-keys --armor "<gpg-signing-keyid>" > "${MIGRATION_DIR}/keys/secret.asc"
gpg --export --armor "<gpg-signing-keyid>" > "${MIGRATION_DIR}/keys/public.asc"
gpg --export-ownertrust > "${MIGRATION_DIR}/keys/ownertrust.txt"
```

---

## 💻 2. Windows Preparation Before Dual-Booting

1. **Disable Windows Fast Startup** *(Critical: Prevents Windows from locking NTFS partitions in a hibernated state, allowing Fedora to read your C: drive)*:
   - Open **Control Panel** ➔ **Hardware and Sound** ➔ **Power Options** ➔ **Choose what the power buttons do**.
   - Click **Change settings that are currently unavailable**.
   - Uncheck **Turn on fast startup (recommended)** and click **Save changes**.

2. **Shrink Windows Partition for Fedora**:
   - Press `Win + X` ➔ **Disk Management**.
   - Right-click your Windows `C:` drive (or secondary NVMe SSD) ➔ **Shrink Volume**.
   - Allocate **60 GB – 150 GB** (or desired size) of **Unallocated Space** for Fedora Workstation.

3. **BitLocker Check**:
   - If BitLocker is enabled on Windows, verify you have your BitLocker Recovery Key accessible on another device (`account.microsoft.com/devices/recoverykey`).

---

## 💿 3. Installing Fedora Workstation

1. Insert your **Fedora Workstation Live USB** and reboot your PC.
2. Press your motherboard boot menu key (`F11`, `F12`, `F8`, or `Esc` depending on hardware).
3. Select the UEFI USB installer and choose **Start Fedora-Workstation-Live**.
4. Launch **Install to Hard Drive**:
   - In **Installation Destination**, select your target NVMe/SSD drive.
   - Choose **Automatic** (targeting Unallocated Space) or **Custom (Btrfs)**:
     - **EFI System Partition**: Select the existing Windows EFI partition, set mount point to `/boot/efi` (**DO NOT FORMAT**).
     - **/boot**: 1024 MB (`ext4`).
     - **Root (Btrfs)**: Assign the remaining unallocated space as Btrfs with standard `@` (root) and `@home` subvolumes.
5. Create your user account with your desired username.
6. Complete installation and reboot into **Fedora Workstation**.

---

## ⚡ 4. Restoring Your Environment on Fedora

Once booted into your new Fedora desktop:

### A. Mount the Windows Partition
Open **Files (Nautilus)** and click your Windows drive in the sidebar, or locate the mount point via terminal:
```bash
# Locate the migration directory
MIGRATION_DIR=$(ls -d /run/media/$USER/*/Users/*/WSL_Migration 2>/dev/null | head -n 1)
```

### B. Extract Repositories & Dotfiles
```bash
# 1. Restore code repositories
mkdir -p "$HOME/code"
tar -xzf "${MIGRATION_DIR}/code_projects.tar.gz" -C "$HOME"

# 2. Restore dotfiles
tar -xzf "${MIGRATION_DIR}/dotfiles.tar.gz" -C "$HOME"

# 3. Restore SSH keys and enforce strict permissions
tar -xzf "${MIGRATION_DIR}/ssh_keys.tar.gz" -C "$HOME"
chmod 700 "$HOME/.ssh"
chmod 600 "$HOME/.ssh/id_"* 2>/dev/null || true
chmod 644 "$HOME/.ssh/"*.pub 2>/dev/null || true
```

### C. Import GPG Keyring
```bash
# Import public and private keys
gpg --import "${MIGRATION_DIR}/keys/public.asc"
gpg --import "${MIGRATION_DIR}/keys/secret.asc"
gpg --import-ownertrust "${MIGRATION_DIR}/keys/ownertrust.txt"
```

---

## 🏁 5. Post-Install Toolchains & Optimizations

```bash
# 1. Switch default login shell to Zsh
chsh -s $(which zsh)

# 2. Install Rust toolchain via rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"

# 3. Deploy Dev Suite configs
git clone <your-dev-suite-repo-url> ~/code/dev-suite
cp ~/code/dev-suite/.zshrc ~/.zshrc
mkdir -p ~/.config && cp ~/code/dev-suite/starship.toml ~/.config/starship.toml
```
