# Dotfiles

Personal configuration and dotfiles.

## Files
- `setup.md` — Complete developer environment setup, CLI toolchain installation, WSL2 optimizations, and packaging master guide (Ubuntu PPA, Fedora Copr, Homebrew Tap, Arch AUR).
- `.zshrc` — Zsh configuration with Starship prompt, custom aliases, Antigravity IDE remote launcher, and plugins.
- `starship.toml` — Starship prompt theme configuration.
- `wsl.conf` — Distribution-level WSL configuration (`/etc/wsl.conf`) with systemd init, metadata options, and Windows interop.
- `.wslconfig` — Windows-side global WSL2 resource configuration (`%USERPROFILE%\.wslconfig`) with RAM caps, CPU allocation, sparse VHD, and gradual memory reclaim.
- `scripts/` — Packaging credential backup and restore helpers (`backup_packaging_keys.sh`, `restore_packaging_keys.sh`).
- `.gemini/config/skills/` — Antigravity / Gemini CLI custom skills:
  - `master-protocol` — Unified master engineering craftsmanship, deep module design, multi-distro packaging (PPA/Copr/AUR/Brew), bug diagnosis loops, and authentic humanized communication.

## Quick Setup
```bash
# Clone and symlink/sync to home directory
git clone git@github.com:<github-user>/dotfiles.git ~/.dotfiles
mkdir -p ~/.gemini/config/skills
cp -r ~/.dotfiles/.gemini/config/skills/* ~/.gemini/config/skills/
cp ~/.dotfiles/.zshrc ~/.zshrc
mkdir -p ~/.config && cp ~/.dotfiles/starship.toml ~/.config/starship.toml

# Apply WSL configs
sudo cp ~/.dotfiles/wsl.conf /etc/wsl.conf
cp ~/.dotfiles/.wslconfig /mnt/c/Users/$USER/.wslconfig 2>/dev/null || true
```
