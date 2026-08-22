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

2. **Deploy Configurations**:
   ```bash
   # From ~/code/dev-suite:
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

Create or edit `C:\Users\<WindowsUser>\.wslconfig` on the Windows host (or apply from `dev-suite/.wslconfig`):

```ini
# %USERPROFILE%\.wslconfig - Global WSL2 Resource Configuration

[wsl2]
# Caps WSL2 physical RAM allocation to 4GB (leaves 12GB for Windows host, IDE, browser & GPU overhead on 16GB systems)
memory=4GB

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

Add the following to `/etc/wsl.conf` inside Linux (or apply from `dev-suite/wsl.conf`):

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

### B. Critical "What NOT To Do" Rules & Anti-Patterns

A comprehensive collection of hard-earned packaging, release, and developer environment traps that must **never** be repeated:

1. **Never Partial-Bump a Release (The Whole Codebase Must Resonate with the Version)**:
   - **Anti-Pattern**: Bumping `Cargo.toml` and Debian manifests while leaving old version strings in `README.md` (quick-start commands, download links, latest changes header) or `.github/ISSUE_TEMPLATE/*` (version placeholders).
   - **Rule**: Every release version bump is an **atomic codebase-wide operation**. Every single file, installation snippet, download link, issue template, packaging recipe, and release manifest must be updated simultaneously in the same release transaction.

2. **Never Leave Stale or Outdated Artifacts in `releases/`**:
   - **Anti-Pattern**: Retaining older binary packages, `.deb`, `.pkg.tar.zst`, or spec files from previous versions (e.g. leaving `v0.5.0` or `v0.8.6` files when cutting `v0.9.0`).
   - **Rule**: Purge stale release packages from `releases/` before generating new artifacts. Recompute `releases/SHA256SUMS.txt` against only the current active release packages and verify with `sha256sum -c SHA256SUMS.txt`.

3. **Never Attempt to Re-Upload a Modified `.orig.tar.gz` with the Same Version to Launchpad**:
   - **Anti-Pattern**: Modifying vendored dependencies, source code, or Debian patches and re-running `dput` with the same `_X.Y.Z.orig.tar.gz`.
   - **Rule**: Launchpad source tarballs are immutable once received. Launchpad will instantly reject the upload with:
     ```text
     Rejected: File <pkg>_<ver>.orig.tar.gz already exists in PPA, but uploaded version has different contents.
     ```
     If the source or vendoring changes after an upload attempt, bump the upstream version or increment the micro release (e.g. `0.8.5` → `0.8.6` or `0.8.5.1`) to generate a new source archive name.

4. **Never Retain `"files"` Mappings in Vendored `.cargo-checksum.json` for Debian Packaging**:
   - **Anti-Pattern**: Leaving original `.cargo-checksum.json` file mappings intact in the vendored crates directory.
   - **Why It Fails**: Debian's `dh_clean` and `dpkg-source` automatically delete `*.orig` files (like `Cargo.toml.orig`) and dotfiles across the source tree before building. When `dh_auto_test` / `cargo build` executes offline, Cargo compares checksums and crashes with:
     ```text
     error: failed to verify the checksum of `...`
     Caused by: the file `Cargo.toml.orig` is missing
     ```
   - **Rule**: Always strip the `"files"` dictionary to empty `{}` across all vendored `.cargo-checksum.json` files before building the Debian source package:
     ```python
     import glob, json
     for p in glob.glob("vendor/**/.cargo-checksum.json", recursive=True):
         with open(p, "r") as f:
             data = json.load(f)
         data["files"] = {}
         with open(p, "w") as f:
             json.dump(data, f)
     ```

5. **Never Use Unpinned Crates or Newer Rust Editions (`edition = 2024`) on Ubuntu LTS**:
   - **Anti-Pattern**: Vendoring modern transitive dependencies (e.g. `clap_lex 0.7.4+`) that declare `edition = "2024"` or require `rust-version >= 1.76+`.
   - **Why It Fails**: Ubuntu 24.04 LTS (Noble) ships fixed `cargo 1.75.0`, which halts with:
     ```text
     error: feature `edition2024` is required
     this Cargo does not support the 2024 edition, but the crate `clap_lex` requires it
     ```
   - **Rule**: Patch all vendored crate `Cargo.toml` files to `edition = "2021"` and remove `rust-version` constraints:
     ```bash
     find vendor/ -name "Cargo.toml*" -exec sed -i 's/edition = "2024"/edition = "2021"/g' {} +
     find vendor/ -name "Cargo.toml*" -exec sed -i '/rust-version/d' {} +
     ```

6. **Never Expect GPG Signing to Work in Automated / Non-Interactive Background Subshells**:
   - **Anti-Pattern**: Running automated background commands with `dpkg-buildpackage -S -k<KEY>` or `debsign` without an interactive terminal.
   - **Why It Fails**: GPG pinentry requires an interactive TTY to securely prompt the user for the GPG private key passphrase. Automated background agents will hang indefinitely waiting on pinentry.
   - **Rule**: Stage the full vendored source package tree and provide an interactive executable shell script (e.g. `upload_ppa.sh`) for the user to execute directly in their terminal.

7. **Never Forget to Re-Calculate Homebrew Formula SHA256 After Force-Pushing Git Tags**:
   - **Anti-Pattern**: Force-updating a git release tag (`git tag -f -a vX.Y.Z`) without updating the `sha256` in `Formula/<pkg>.rb`.
   - **Why It Fails**: GitHub dynamically generates tarballs from commit trees. A different commit hash under the same tag produces a different archive hash, breaking Homebrew installation with a SHA256 mismatch error.
   - **Rule**: Always curl the live archive and compute the exact hash immediately after pushing the tag:
     ```bash
     curl -sL https://github.com/<user>/<repo>/archive/refs/tags/v<version>.tar.gz | sha256sum
     ```

8. **Never Assume Fedora Copr Builds Trigger Automatically on Release**:
   - **Anti-Pattern**: Pushing git tags to GitHub and assuming Copr has built the RPM without verification.
   - **Rule**: Always explicitly trigger and monitor the Copr build via CLI:
     ```bash
     copr-cli build-package <user>/<repo> --name <repo> --nowait
     copr-cli status <build-id>
     ```
     Verify the state transitions from `importing` → `pending` → `succeeded`.

9. **Never Display Virtualized Network Storage Filesystems (`9p` / `drvfs`) in WSL2**:
   - **Anti-Pattern**: Reporting Windows host drive partitions (`/mnt/c`, `/mnt/d`) as `9p` or `drvfs` in system fetch tools or disk analyzers.
   - **Rule**: In WSL2, Windows filesystems are mounted through the Plan 9 / DrvFS network file protocol driver. Always normalize `9p`, `drvfs`, and `9pnet_virtio` to **`ntfs`** (or `vfat` for removable FAT drives) for accurate system reporting.

10. **Never Use Unreadable Dual-Tone Coloring Without High-Contrast Framing**:
    - **Anti-Pattern**: Coloring ASCII art lines with clashing or overly subtle dual-tone foreground codes that become unreadable against certain terminal background themes.
    - **Rule**: Always structure terminal ASCII art with clear separation:
      - **Outer Framing & Boundary Outlines**: Crisp high-contrast white (`\x1b[38;5;231m`).
      - **Inner Emblem & Focal Glyphs**: Distro brand signature colors (Ubuntu Orange, Fedora Blue, Debian Red, Arch Cyan, Mint Green, etc.).
      - Always include single-line ANSI resets (`\x1b[0m`) and clean non-color fallback paths.

11. **Never Depend on Network Access in Launchpad Build Environments**:
    - **Anti-Pattern**: Relying on `cargo build`, `npm install`, or `curl` during the Debian packaging build stage on Launchpad.
    - **Rule**: Launchpad builddaemons have no internet connectivity. All dependencies must be strictly vendored in `debian/vendor` or `vendor/`, with `.cargo/config.toml` configuring offline source replacement.

12. **Never Ignore Launchpad Publishing Latency (FULLYBUILT_PENDING)**:
    - **Anti-Pattern**: Assuming `sudo apt update && sudo apt install <pkg>` works the second Launchpad finishes compiling.
    - **Rule**: Packages enter the `FULLYBUILT_PENDING` queue after compilation while awaiting Launchpad's periodic index publisher cron job (10–15 minute cadence). Wait for the repository status to reach `Published` before testing APT installs.

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

Helper scripts tracked in [`dev-suite/scripts/`](scripts/):

#### 1. Backup Credentials (Automated):
```bash
# Generates encrypted packaging-backup.zip (GPG keys, Copr API config, SSH keys)
bash ~/code/dev-suite/scripts/backup_packaging_keys.sh
# Save packaging-backup.zip to secure secondary storage (Bitwarden or encrypted cloud storage)
```

#### 2. Restore Credentials on a New Machine (Automated):
```bash
bash ~/code/dev-suite/scripts/restore_packaging_keys.sh ~/code/packaging-backup.zip
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

