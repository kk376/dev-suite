# Dev Suite

Personal developer suite, environment configurations, multi-distro packaging automation, and autonomous agent engineering & design skills.

## Files
- `setup.md` — Complete developer environment setup, CLI toolchain installation, WSL2 optimizations, and packaging master guide (Ubuntu PPA, Fedora Copr, Homebrew Tap, Arch AUR).
- `.zshrc` — Zsh configuration with Starship prompt, custom aliases, Antigravity IDE remote launcher, and plugins.
- `starship.toml` — Starship prompt theme configuration.
- `wsl.conf` — Distribution-level WSL configuration (`/etc/wsl.conf`) with systemd init, metadata options, and Windows interop.
- `.wslconfig` — Windows-side global WSL2 resource configuration (`%USERPROFILE%\.wslconfig`) with RAM caps, CPU allocation, sparse VHD, and gradual memory reclaim.
- `scripts/` — Packaging credential backup and restore helpers (`backup_packaging_keys.sh`, `restore_packaging_keys.sh`).
- `.gemini/config/skills/` — Antigravity / Gemini CLI custom skills:
  - `engineer` — Universal software engineering standard and workflow system incorporating the full 35-skill engineering and productivity suite (deep modules, TDD, bug diagnostics, frontier grilling, to-spec, to-tickets, two-axis code review, wayfinding, merge conflict resolution, multi-platform packaging, interactive wizards).
  - `designer` — Universal master design and UI/UX architecture standard incorporating 74 production design systems across 8 archetypes, universal design token engines (OKLCH, CSS, Tailwind v3/v4), component blueprints, terminal UI geometry, animation physics, WCAG AAA accessibility, and Core Web Vitals performance.

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
