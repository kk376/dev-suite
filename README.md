# Dev Suite

Personal developer suite, environment configurations, multi-distro packaging automation, and autonomous agent engineering & design skills.

## Files
- `POSTGRES_PGADMIN_GUIDE.md` — Complete setup guide for PostgreSQL 18 (official PGDG) and pgAdmin 4 Desktop on Fedora Workstation.
- `FEDORA_DESKTOP_TIPS.md` — Fedora desktop fixes guide: Bluetooth A2DP audio restoration, Chrome Wayland video decoding, and GPU verification.
- `FEDORA_MIGRATION.md` — WSL2 (Ubuntu) to Native Fedora Workstation migration and restore master guide.
- `setup.md` — Complete developer environment setup, CLI toolchain installation, WSL2 optimizations, and packaging master guide (Ubuntu PPA, Fedora Copr, Homebrew Tap, Arch AUR).
- `.zshrc` — Zsh configuration with Starship prompt, custom aliases, PATH exports, and plugins.
- `starship.toml` — Starship prompt theme configuration.
- `wsl.conf` — Distribution-level WSL configuration (`/etc/wsl.conf`) with systemd init, metadata options, and Windows interop.
- `.wslconfig` — Windows-side global WSL2 resource configuration (`%USERPROFILE%\.wslconfig`) with RAM caps, CPU allocation, sparse VHD, and gradual memory reclaim.
- `scripts/` — Packaging credential backup and restore helpers (`backup_packaging_keys.sh`, `restore_packaging_keys.sh`).
- `.gemini/config/skills/` — Antigravity / Gemini CLI custom skills:
  - `engineer` — Universal Master Engineering Craftsmanship & UI/UX Architecture Standard. Synthesizes deep module architecture, TDD discipline, 6-phase bug diagnosis, frontier grilling, spec slicing, two-axis code review, and multi-platform packaging, alongside 74 production design systems across 8 archetypes, OKLCH token engines, Tailwind v3/v4, component blueprints, fluid layout architecture, spring motion physics, WCAG AAA accessibility, and Core Web Vitals performance.

## Quick Setup
```bash
# Clone and deploy to home directory
git clone git@github.com:kk376/dev-suite.git ~/code/dev-suite
mkdir -p ~/.gemini/config/skills
cp -r ~/code/dev-suite/.gemini/config/skills/* ~/.gemini/config/skills/
cp ~/code/dev-suite/.zshrc ~/.zshrc
mkdir -p ~/.config && cp ~/code/dev-suite/starship.toml ~/.config/starship.toml

# Apply WSL configs
sudo cp ~/code/dev-suite/wsl.conf /etc/wsl.conf
cp ~/code/dev-suite/.wslconfig /mnt/c/Users/$USER/.wslconfig 2>/dev/null || true
```
