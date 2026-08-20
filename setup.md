# Developer Environment Setup & Packaging Master Guide

A complete, battle-tested reference for setting up developer toolchains, modern terminal workflows, WSL2 performance optimizations, and Linux distribution packaging pipelines (Ubuntu PPA, Fedora Copr, Homebrew Tap, Arch AUR).

---

## Table of Contents

1. [Terminal & CLI Toolchain Installation](#1-terminal--cli-toolchain-installation)
   - [A. Ubuntu / Debian / WSL2](#a-ubuntu--debian--wsl2)
   - [B. Fedora Workstation](#b-fedora-workstation)
   - [C. Shell & Starship Configuration](#c-shell--starship-configuration)
2. [WSL2 Host Performance & Integration](#2-wsl2-host-performance--integration)
   - [A. Memory Auto-Reclaim & Disk Shrink (`.wslconfig`)](#a-memory-auto-reclaim--disk-shrink-wslconfig)
   - [B. WSL System Configuration (`/etc/wsl.conf`)](#b-wsl-system-configuration-etcwslconf)
   - [C. Windows Host Launchers (`anti`, `code`, `explorer`)](#c-windows-host-launchers-anti-code-explorer)
3. [Packaging & Distribution Master Reference](#3-packaging--distribution-master-reference)
   - [A. Maintainer Credentials Reference](#a-maintainer-credentials-reference)
   - [B. Critical "What NOT To Do" Rules](#b-critical-what-not-to-do-rules)
   - [C. Multi-Platform Release Checklist](#c-multi-platform-release-checklist)
   - [D. Exact Release Commands per Channel](#d-exact-release-commands-per-channel)
   - [E. Disaster Recovery: Backup & Restore Keys](#e-disaster-recovery-backup--restore-keys)

---

## 1. Terminal & CLI Toolchain Installation

### A. Ubuntu / Debian / WSL2

```bash
# 1. Update system repositories
sudo apt update && sudo apt upgrade -y

# 2. Essential compilers, build tools & packaging utilities
sudo apt install -y \
  build-essential gcc g++ clang cmake ninja-build ccache \
  pkg-config libssl-dev git curl wget zip unzip tar \
  debhelper devscripts dput pipx zsh

# 3. Modern CLI power tools
sudo apt install -y \
  bat ripgrep fd-find fzf zoxide wl-clipboard

# Note: On Debian/Ubuntu, bat is installed as 'batcat' and fd as 'fdfind'.
# Aliases in .zshrc handle this automatically.

# 4. Install Rust Toolchain (via rustup)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"

# 5. Install Starship Prompt
curl -sS https://starship.rs/install.sh | sh -s -- -y

# 6. Install Modern CLI Tools (eza, ferrisfetch, copr-cli)
# eza (Modern ls replacement)
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo apt update && sudo apt install -y eza

# FerrisFetch (Official PPA)
sudo add-apt-repository -y ppa:<launchpad-username>/ferrisfetch
sudo apt update && sudo apt install -y ferrisfetch

# Fedora Copr CLI tool
pipx install copr-cli
```

---

### B. Fedora Workstation

```bash
# 1. Optimize DNF downloads
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf
sudo dnf upgrade -y

# 2. Essential compilers, build tools & developer utilities
sudo dnf groupinstall -y "Development Tools" "C Development Tools and Libraries"
sudo dnf install -y \
  clang cmake ninja-build ccache rustup git curl wget zip unzip \
  zsh starship eza bat ripgrep fd-find fzf zoxide yazi \
  wl-clipboard xclip copr-cli

# 3. FerrisFetch (Official Copr)
sudo dnf copr enable -y <copr-user>/<package-name>
sudo dnf install -y ferrisfetch
```

---

### C. Shell & Starship Configuration

1. **Install Standalone ZSH Plugins** (Fast, zero-overhead):
   ```bash
   mkdir -p ~/.zsh/plugins
   git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions
   git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/plugins/zsh-syntax-highlighting
   ```

2. **Deploy Dotfiles**:
   ```bash
   # From ~/code/dotfiles:
   cp .zshrc ~/.zshrc
   mkdir -p ~/.config
   cp starship.toml ~/.config/starship.toml
   ```

3. **Set ZSH as Default Shell**:
   ```bash
   chsh -s $(which zsh)
   ```

---

## 2. WSL2 Host Performance & Integration

### A. Memory Auto-Reclaim & Disk Shrink (`.wslconfig`)

Create or edit `C:\Users\<WindowsUser>\.wslconfig` in Windows:

```ini
[wsl2]
swap=2GB

[experimental]
autoMemoryReclaim=gradual   # Automatically releases cached RAM back to Windows host
sparseVhd=true             # Automatically shrinks virtual disk when files are deleted
```

*Apply changes by running `wsl --shutdown` in Windows PowerShell.*

**Instant Memory Flush Command (Inside WSL):**
```bash
sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
```

---

### B. WSL System Configuration (`/etc/wsl.conf`)

Add the following to `/etc/wsl.conf` inside Linux:

```ini
[boot]
systemd=true

[automount]
enabled=true
options="metadata,umask=22,fmask=11"
mountFsTab=true

[interop]
enabled=true
appendWindowsPath=true

[user]
default=<username>
```

---

### C. Windows Host Launchers (`anti`, `code`, `explorer`)

Add these helper functions to your `~/.zshrc` to launch Windows applications seamlessly from WSL:

```bash
# Launch Windows Explorer at current path
function explorer() {
    /mnt/c/Windows/explorer.exe "${1:-.}"
}

# Launch VS Code in WSL remote mode
function code() {
    /mnt/c/Program\ Files/Microsoft\ VS\ Code/bin/code "${1:-.}"
}

# Launch Google Antigravity IDE in WSL remote mode
function anti() {
    local target_path="${1:-.}"
    if [ "$target_path" = "." ]; then
        target_path="$(pwd)"
    else
        target_path="$(realpath "$target_path")"
    fi

    local win_user
    win_user=$(cmd.exe /c "echo %USERNAME%" 2>/dev/null | tr -d '\r')
    local anti_exe="/mnt/c/Users/${win_user}/AppData/Local/Programs/Antigravity/Antigravity.exe"

    if [ -f "$anti_exe" ]; then
        "$anti_exe" --remote "wsl+${WSL_DISTRO_NAME:-Ubuntu}" "$target_path" >/dev/null 2>&1 &
    else
        echo "Antigravity IDE not found at $anti_exe"
    fi
}
```

---

## 3. Packaging & Distribution Master Reference

### A. Maintainer Credentials Reference

| Item | Identifier / Value | Location / Usage |
| :--- | :--- | :--- |
| **GPG Key User ID** | `<Maintainer Name> <<maintainer-email@domain.com>>` | Debian source package signing |
| **GPG Key Fingerprint** | `<gpg-signing-fingerprint>` | `dpkg-buildpackage -k<FINGERPRINT>` |
| **GPG Short Key ID** | `<16-character-keyid>` | Registered on `keyserver.ubuntu.com` |
| **Ubuntu Launchpad PPA** | `ppa:<launchpad-username>/ferrisfetch` | `dput ppa:<launchpad-username>/ferrisfetch` |
| **Fedora Copr Project** | `<copr-user>/<package-name>` | `copr-cli build-package <copr-user>/<package-name>` |
| **Copr API Config** | `~/.config/copr` | Generated from `copr.fedorainfracloud.org` |
| **AUR SSH Key** | `~/.ssh/id_ed25519` | `ssh://aur@aur.archlinux.org/ferrisfetch.git` |
| **Homebrew Tap Repo** | `<github-user>/homebrew-tap` | `https://github.com/<github-user>/homebrew-tap` |

---

### B. Critical "What NOT To Do" Rules

1. ❌ **NEVER Re-Upload a Modified `.orig.tar.gz` with the Same Version**:
   - Launchpad source tarballs are immutable. If contents change, bump the version (e.g. `0.5.0.3`) to generate a new `.orig.tar.gz`.
2. ❌ **NEVER Forget to Strip `edition = "2024"` and `rust-version` for Ubuntu**:
   - Ubuntu 24.04 (`noble`) runs `rustc 1.75.0`. Always run:
     ```bash
     find vendor/ -name "Cargo.toml*" -exec sed -i 's/edition = "2024"/edition = "2021"/g' {} +
     find vendor/ -name "Cargo.toml*" -exec sed -i '/rust-version/d' {} +
     ```
3. ❌ **NEVER Rely on Online Cargo Builds on Launchpad**:
   - Builder nodes have zero network access. Always vendor crates offline (`cargo vendor vendor/`) and configure `.cargo/config.toml`.
4. ❌ **NEVER Uncheck "Push" Events in GitHub Webhooks for Copr**:
   - Copr listens strictly to **Push events** (commits and tags). Do not select only "Releases".
5. ❌ **NEVER Keep Both `debian/compat` and `debhelper-compat`**:
   - Keep `debhelper-compat (= 13)` in `debian/control` and delete `debian/compat`.
6. ❌ **NEVER Commit GPG Keys or Copr Tokens to Git**:
   - Keep secrets out of Git. Use password-protected AES-256 encrypted zips for backups.

---

### C. Multi-Platform Release Checklist

When cutting a new release (e.g. `v0.6.0`):

1. **Update Manifests**:
   - `Cargo.toml`: `version = "0.6.0"`
   - `packaging/debian/changelog`: `ferrisfetch (0.6.0-1~ppa1~noble)`
   - `packaging/rpm/ferrisfetch.spec`: `Version: 0.6.0`
   - `packaging/arch/PKGBUILD` & `.SRCINFO`: `pkgver=0.6.0`
2. **Run Quality Gate**:
   ```bash
   cargo test
   cargo clippy --all-targets --all-features -- -D warnings
   cargo fmt --check
   ```
3. **Commit & Tag**:
   ```bash
   git add .
   git commit -m "chore: release v0.6.0"
   git tag -a v0.6.0 -m "Release v0.6.0"
   git push origin main && git push origin v0.6.0
   ```
4. **Trigger Copr Build**:
   ```bash
   copr-cli build-package <copr-user>/<package-name> --name ferrisfetch --nowait
   ```
5. **Update Homebrew Tap Formula**:
   - Compute SHA: `curl -sL "https://github.com/<github-user>/<package-name>/archive/refs/tags/v0.6.0.tar.gz" | sha256sum`
   - Update `Formula/ferrisfetch.rb` and push to `<github-user>/homebrew-tap`.
6. **Upload to Ubuntu Launchpad PPA**:
   - Execute the offline Debian packaging and sign with GPG key `<gpg-signing-fingerprint>`.

---

### D. Exact Release Commands per Channel

#### 1. Ubuntu Launchpad PPA
```bash
BUILD_DIR=$(mktemp -d)
mkdir -p "$BUILD_DIR/ferrisfetch-0.6.0"
cp -r src completions Cargo.toml Cargo.lock LICENSE README.md vendor "$BUILD_DIR/ferrisfetch-0.6.0/"
mkdir -p "$BUILD_DIR/ferrisfetch-0.6.0/.cargo"
cat > "$BUILD_DIR/ferrisfetch-0.6.0/.cargo/config.toml" << 'CARGO_CONFIG'
[source.crates-io]
replace-with = "vendored-sources"

[source.vendored-sources]
directory = "vendor/"
CARGO_CONFIG
cp -r packaging/debian "$BUILD_DIR/ferrisfetch-0.6.0/debian"

cd "$BUILD_DIR"
tar -czf ferrisfetch_0.6.0.orig.tar.gz ferrisfetch-0.6.0

cd "$BUILD_DIR/ferrisfetch-0.6.0"
dpkg-buildpackage -S -d -k<gpg-signing-fingerprint>
dput ppa:<launchpad-username>/ferrisfetch "$BUILD_DIR"/ferrisfetch_0.6.0-1~ppa1~noble_source.changes
rm -rf "$BUILD_DIR"
```

#### 2. Fedora Copr
```bash
copr-cli build-package <copr-user>/<package-name> --name ferrisfetch
```

#### 3. Homebrew Tap
```bash
cd "$HOME/code/homebrew-tap"
git add Formula/ferrisfetch.rb
git commit -m "feat(ferrisfetch): update formula to 0.6.0"
git push origin main
```

#### 4. Arch Linux AUR
```bash
git clone ssh://aur@aur.archlinux.org/ferrisfetch.git /tmp/aur-ferrisfetch
cp $HOME/code/${PKG_NAME}/packaging/arch/PKGBUILD /tmp/aur-ferrisfetch/
cp $HOME/code/${PKG_NAME}/packaging/arch/.SRCINFO /tmp/aur-ferrisfetch/
cd /tmp/aur-ferrisfetch
git add PKGBUILD .SRCINFO
git commit -m "Update to 0.6.0"
git push origin master
rm -rf /tmp/aur-ferrisfetch
```

---

### E. Disaster Recovery: Backup & Restore Keys

Helper scripts are tracked in [`dotfiles/scripts/`](scripts/):

#### 1. Backup Credentials (Automated):
```bash
# Creates password-protected packaging-backup.zip (GPG key, Copr config, SSH keys)
bash ~/.dotfiles/scripts/backup_packaging_keys.sh
# 👉 Action: Upload ~/code/packaging-backup.zip to Google Drive or Bitwarden
```

#### 2. Restore Credentials on a New Machine (Automated):
```bash
# 1. Download packaging-backup.zip from your cloud storage
# 2. Run the restore script
bash ~/.dotfiles/scripts/restore_packaging_keys.sh ~/code/packaging-backup.zip
```

#### 3. Manual Step-by-Step Recovery Reference:
If you do not have the restore script, run these commands manually after unzipping `packaging-backup.zip`:

```bash
# A. Import GPG private signing key
gpg --import ferrisfetch-gpg-key.asc

# B. Restore Copr API configuration
mkdir -p ~/.config
cp copr-config.backup ~/.config/copr
chmod 600 ~/.config/copr

# C. Restore SSH keys for AUR and GitHub
mkdir -p ~/.ssh
cp id_ed25519 ~/.ssh/id_ed25519
cp id_ed25519.pub ~/.ssh/id_ed25519.pub
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub

# D. Install essential packaging tools
sudo apt update && sudo apt install -y debhelper devscripts dput git
pipx install copr-cli
```

