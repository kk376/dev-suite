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

### A. Resource Allocation & Performance Tuning (`.wslconfig`)

Create or edit `C:\Users\<WindowsUser>\.wslconfig` on the Windows host (or apply from `dotfiles/.wslconfig`):

```ini
# %USERPROFILE%\.wslconfig - Global WSL2 Resource Configuration

[wsl2]
# Caps WSL2 physical RAM allocation to 8GB (leaves 8GB for Windows host & GPU overhead on 16GB systems)
memory=8GB

# Allocates 4 dedicated CPU cores out of 12 (Ryzen 5 7535HS) to ensure smooth host UI during heavy compilation
processors=4

# Limits virtual swap file size on physical NVMe SSD
swap=2GB

# Automatically binds Linux listening ports (e.g., localhost:3000) to Windows localhost
localhostForwarding=true

[experimental]
# Automatically and gradually frees idle Linux page cache RAM back to Windows
autoMemoryReclaim=gradual

# Automatically contracts the dynamic ext4.vhdx virtual disk size when files are deleted
sparseVhd=true
```

*Apply changes by running `wsl --shutdown` in Windows PowerShell.*

**Instant Memory Flush Command (Inside WSL):**
```bash
sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
```

---

### B. WSL System Configuration (`/etc/wsl.conf`)

Add the following to `/etc/wsl.conf` inside Linux (or apply from `dotfiles/wsl.conf`):

```ini
# /etc/wsl.conf - Distribution-level WSL2 Configuration

[boot]
# Enables systemd init for Docker daemon, background services, and socket activation
systemd=true

[user]
# Sets default non-root user for login sessions
default=<username>

[automount]
# Automatically mounts Windows drive letters (/mnt/c, /mnt/d)
enabled=true
# metadata: Emulates POSIX permissions (chmod/chown) on Windows NTFS drives
# case=off: Enables case-insensitive path lookup matching Windows filesystem behavior
options="metadata,case=off"
# Processes /etc/fstab entries on boot
mountFsTab=true

[interop]
# Enables running Windows executables (.exe) from Linux shell
enabled=true
# Appends Windows host PATH to Linux PATH
appendWindowsPath=true
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

Universal guide for building, signing, and distributing Linux and macOS packages across Launchpad PPA (Ubuntu/Debian), Fedora Copr (RPM), Homebrew Tap (macOS/Linux), and Arch Linux AUR.

---

### A. Maintainer Credentials & Configuration

Set these environment variables or substitute them into the commands below:

```bash
PKG_NAME="<package-name>"          # e.g. ferrisfetch
PKG_VER="<version>"                # e.g. 1.0.0
DEB_DIST="noble"                   # Target Ubuntu release (noble, jammy)
DEB_REL="1~ppa1~${DEB_DIST}"       # Debian release suffix
GH_USER="<github-username>"                    # GitHub username
LP_USER="<launchpad-username>"              # Launchpad username
GPG_KEY="<gpg-signing-fingerprint>" # GPG signing key fingerprint
```

| Item | Identifier / Value | Usage |
| :--- | :--- | :--- |
| **GPG Key User ID** | `<Maintainer Name> <<maintainer-email@domain.com>>` | Debian source package signing (`dpkg-buildpackage`) |
| **GPG Key Fingerprint** | `<gpg-signing-fingerprint>` | Source package signing key (`-k<KEY>`) |
| **GPG Short Key ID** | `<16-character-keyid>` | Public key verification on `keyserver.ubuntu.com` |
| **Ubuntu Launchpad PPA** | `ppa:${LP_USER}/${PKG_NAME}` | `dput ppa:${LP_USER}/${PKG_NAME}` |
| **Fedora Copr Project** | `${GH_USER}/${PKG_NAME}` | `copr-cli build-package ${GH_USER}/${PKG_NAME} --name ${PKG_NAME}` |
| **Copr API Config** | `~/.config/copr` | Auth token from `copr.fedorainfracloud.org` |
| **AUR SSH Key** | `~/.ssh/id_ed25519` | `ssh://aur@aur.archlinux.org/${PKG_NAME}.git` |
| **Homebrew Tap Repo** | `${GH_USER}/homebrew-tap` | `https://github.com/${GH_USER}/homebrew-tap` |

---

### B. Critical Rules & Edge Cases

1. **Never Re-Upload a Modified `.orig.tar.gz` with the Same Version**:
   - Launchpad source archives are immutable. If package contents or vendored files change after an upload attempt, bump the version or increment the micro release (e.g. `1.0.0.1`) to generate a new source archive.
2. **Never Rely on Online Builds on Launchpad**:
   - Launchpad build containers run with zero network access. Always vendor all dependencies offline (e.g. `cargo vendor vendor/`) and configure offline mirrors (`.cargo/config.toml`).
3. **Handle Debhelper `dh_clean` File Pruning**:
   - `dh_clean` deletes all `*.orig` files across the source tree before building. For vendored Rust crates containing `Cargo.toml.orig`, strip the `"files"` dictionary from `vendor/*/.cargo-checksum.json` so Cargo does not halt on missing file hashes.
4. **Strip Incompatible Toolchain Directives for LTS Distros**:
   - Ubuntu 24.04 (`noble`) defaults to `rustc 1.75.0`. Strip `edition = "2024"` and `rust-version` constraints from vendored manifests when targeting older toolchains:
     ```bash
     find vendor/ -name "Cargo.toml*" -exec sed -i 's/edition = "2024"/edition = "2021"/g' {} +
     find vendor/ -name "Cargo.toml*" -exec sed -i '/rust-version/d' {} +
     ```
5. **Pin Both Production and Dev-Dependencies to Match Target Distro MSRV**:
   - Ubuntu LTS distributions ship fixed `rustc` versions in standard repos (e.g. Ubuntu 24.04 Noble ships `rustc 1.75.0`).
   - When Debian package builders execute `dh_auto_test` (`cargo test`), Cargo compiles `[dev-dependencies]`.
   - Newer versions of transitive test dependencies often pull compiler-breaking crates (for example, `tempfile >= 3.12` pulls `getrandom 0.4.x` which uses `c"..."` string literals, `ptr::dangling_mut`, and `core::error::Error` requiring Rust 1.84+; `clap >= 4.6.0` adopted `Result::inspect_err()` requiring Rust 1.76+).
   - Pin both production and dev-dependencies to LTS-safe series (e.g. `tempfile = "=3.10.1"`, `clap = "~4.5.31"`, `assert_cmd = "~2.0.14"`, `predicates = "~3.1.0"`) before vendoring.
6. **Configure Push Events for Fedora Copr Webhooks**:
   - Copr webhook triggers require **Push events** (commits and tags) enabled in GitHub repository settings. Do not select only "Releases".
7. **Use Modern Debhelper Compatibility**:
   - Declare `debhelper-compat (= 13)` in `debian/control` and delete legacy `debian/compat` files.
8. **Protect Signing Keys and API Tokens**:
   - Never commit private keys or API tokens to Git. Store credential backups in encrypted archives.
9. **Account for Launchpad Repository Publishing Latency (FULLYBUILT_PENDING)**:
   - After a package builds successfully on the buildd daemon, Launchpad does not immediately make the `.deb` installable via `apt`.
   - The package enters the **`FULLYBUILT_PENDING`** state while awaiting Launchpad's periodic repository index publisher cron job (which runs every 10–15 minutes).
   - Once the publisher signs the repository `Packages.gz` and `InRelease` files (status transitions to **`Published`**), `sudo apt update && sudo apt install <pkg>` will resolve and install the package.

---

### C. Multi-Platform Release Workflow

When cutting a new release:

1. **Update Manifest Versions**:
   - Rust: Update `version` in `Cargo.toml`
   - Debian: Add new entry in `packaging/debian/changelog` (`${PKG_NAME} (${PKG_VER}-${DEB_REL}) ${DEB_DIST}; urgency=medium`)
   - RPM: Update `Version:` in `packaging/rpm/${PKG_NAME}.spec`
   - Arch: Update `pkgver` in `packaging/arch/PKGBUILD` and regenerate `.SRCINFO`
2. **Run Quality Gates**:
   - Run the project test suite, linters, and formatters to confirm clean passes.
3. **Commit & Create Git Tag**:
   ```bash
   git add .
   git commit -m "chore: release v${PKG_VER}"
   git tag -a "v${PKG_VER}" -m "Release v${PKG_VER}"
   git push origin main && git push origin "v${PKG_VER}"
   ```
4. **Distribute Across Channels**:
   - Trigger Fedora Copr build
   - Update Homebrew formula with tag archive checksum
   - Push updated `PKGBUILD` and `.SRCINFO` to AUR
   - Build signed source package and upload to Launchpad PPA

---

### D. Universal Release Commands per Channel

#### 1. Ubuntu Launchpad PPA

Universal script to vendor dependencies, generate `.orig.tar.gz`, sign source files, and upload via `dput`:

```bash
PKG_NAME="<package-name>"
PKG_VER="<version>"
DEB_DIST="noble"
DEB_REL="1~ppa1~${DEB_DIST}"
LP_USER="<launchpad-username>"
GPG_KEY="<gpg-signing-fingerprint>"

BUILD_DIR=$(mktemp -d)
mkdir -p "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}"

# Copy source tree and vendored dependencies
cp -r src completions Cargo.toml Cargo.lock LICENSE README.md vendor "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}/" 2>/dev/null || \
cp -r * "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}/"

# Configure offline cargo source replacement if Rust project
if [ -d "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}/vendor" ]; then
    mkdir -p "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}/.cargo"
    cat > "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}/.cargo/config.toml" << 'CARGO_CONFIG'
[source.crates-io]
replace-with = "vendored-sources"

[source.vendored-sources]
directory = "vendor/"
CARGO_CONFIG

    # Strip edition 2024 and rust-version constraints for Ubuntu LTS toolchain compatibility
    find "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}/vendor/" -name "Cargo.toml*" -exec sed -i 's/edition = "2024"/edition = "2021"/g' {} +
    find "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}/vendor/" -name "Cargo.toml*" -exec sed -i '/rust-version/d' {} +

    # Strip individual file checksums so dh_clean *.orig deletion does not cause verification failures
    python3 -c '
import glob, json
for p in glob.glob("'"${BUILD_DIR}/${PKG_NAME}-${PKG_VER}"'/vendor/*/.cargo-checksum.json"):
    with open(p, "r") as f:
        data = json.load(f)
    data["files"] = {}
    with open(p, "w") as f:
        json.dump(data, f)
'
fi

# Copy debian packaging files
cp -r packaging/debian "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}/debian"

# Create source archive
cd "${BUILD_DIR}"
tar -czf "${PKG_NAME}_${PKG_VER}.orig.tar.gz" "${PKG_NAME}-${PKG_VER}"

# Build and sign source package
cd "${BUILD_DIR}/${PKG_NAME}-${PKG_VER}"
dpkg-buildpackage -S -d -k"${GPG_KEY}"

# Upload to Launchpad
dput "ppa:${LP_USER}/${PKG_NAME}" "${BUILD_DIR}/${PKG_NAME}_${PKG_VER}-${DEB_REL}_source.changes"
rm -rf "${BUILD_DIR}"
```

#### 2. Fedora Copr

Trigger build from the Copr web interface or CLI:

```bash
GH_USER="<github-username>"
PKG_NAME="<package-name>"

copr-cli build-package "${GH_USER}/${PKG_NAME}" --name "${PKG_NAME}"
```

#### 3. Homebrew Tap

Compute source tarball SHA256 and update formula:

```bash
GH_USER="<github-username>"
PKG_NAME="<package-name>"
PKG_VER="<version>"

TARBALL_URL="https://github.com/${GH_USER}/${PKG_NAME}/archive/refs/tags/v${PKG_VER}.tar.gz"
SHA256=$(curl -sL "${TARBALL_URL}" | sha256sum | awk '{print $1}')

echo "URL: ${TARBALL_URL}"
echo "SHA256: ${SHA256}"

cd "$HOME/code/homebrew-tap"
# Update url and sha256 in Formula/${PKG_NAME}.rb
git add "Formula/${PKG_NAME}.rb"
git commit -m "feat(${PKG_NAME}): update formula to ${PKG_VER}"
git push origin main
```

#### 4. Arch Linux AUR

Update AUR repository with new `PKGBUILD` and generated `.SRCINFO`:

```bash
PKG_NAME="<package-name>"
PKG_VER="<version>"
PROJECT_DIR="$HOME/code/${PKG_NAME}"

AUR_DIR=$(mktemp -d)
git clone "ssh://aur@aur.archlinux.org/${PKG_NAME}.git" "${AUR_DIR}"
cp "${PROJECT_DIR}/packaging/arch/PKGBUILD" "${AUR_DIR}/"

cd "${AUR_DIR}"
makepkg --printsrcinfo > .SRCINFO
git add PKGBUILD .SRCINFO
git commit -m "chore: release ${PKG_VER}"
git push origin master
rm -rf "${AUR_DIR}"
```

#### 5. Windows WinGet

When publishing a new release for a registered package on WinGet:

```powershell
wingetcreate update <Publisher>.<PackageName> --version <version> --urls https://github.com/<github-user>/<package-name>/releases/download/v<version>/<package-name>-windows-x86_64.zip
```

`wingetcreate` will download the new zip, calculate the SHA256 checksum, update the manifest version, and open the update PR to `microsoft/winget-pkgs` automatically.

---

### E. Disaster Recovery: Backup & Restore Keys

Helper scripts tracked in [`dotfiles/scripts/`](scripts/):

#### 1. Backup Credentials (Automated):
```bash
# Generates encrypted packaging-backup.zip (GPG keys, Copr API config, SSH keys)
bash ~/.dotfiles/scripts/backup_packaging_keys.sh
# Save packaging-backup.zip to secure secondary storage (Bitwarden or encrypted cloud storage)
```

#### 2. Restore Credentials on a New Machine (Automated):
```bash
bash ~/.dotfiles/scripts/restore_packaging_keys.sh ~/code/packaging-backup.zip
```

#### 3. Manual Step-by-Step Recovery Reference:
If running manual restoration from an unzipped backup archive:

```bash
# 1. Import GPG private signing key
gpg --import packaging-gpg-key.asc

# 2. Restore Copr API configuration
mkdir -p ~/.config
cp copr-config.backup ~/.config/copr
chmod 600 ~/.config/copr

# 3. Restore SSH keys for AUR and GitHub
mkdir -p ~/.ssh
cp id_ed25519 ~/.ssh/id_ed25519
cp id_ed25519.pub ~/.ssh/id_ed25519.pub
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub

# 4. Install essential build and packaging tools
sudo apt update && sudo apt install -y debhelper devscripts dput git
pipx install copr-cli
```

