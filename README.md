# Dev Suite

Personal developer suite, environment configurations, multi-distro packaging automation, and autonomous agent engineering & design skills.

## Files & Modules
- `POSTGRES_PGADMIN_GUIDE.md` — Complete setup guide for PostgreSQL 18 (official PGDG) and pgAdmin 4 Desktop on Fedora Workstation.
- `FEDORA_DESKTOP_TIPS.md` — Fedora desktop fixes guide: Bluetooth A2DP audio restoration, Chrome Wayland video decoding, and GPU verification.
- `FEDORA_MIGRATION.md` — WSL2 (Ubuntu) to Native Fedora Workstation migration and restore master guide.
- `setup.md` — Complete developer environment setup, CLI toolchain installation, WSL2 optimizations, and packaging master guide (Ubuntu PPA, Fedora Copr, Homebrew Tap, Arch AUR).
- `.zshrc` — Zsh configuration with Starship prompt, custom aliases, PATH exports, and plugins.
- `starship.toml` — Starship prompt theme configuration.
- `kitty/` — Kitty GPU-accelerated terminal configuration (`kitty.conf`) with Tokyo Night palette, FiraCode ligatures, and custom desktop launcher.
- `zed/` — Zed Editor complete configuration:
  - `settings.json` — One Dark Pro Glass theme, Material Icon Theme, FiraCode ligatures, minimap, autosave, and VS Code keymap base.
  - `keymap.json` — Code Runner keybindings (`Ctrl+Alt+N` and `F5` to trigger `Run current file`, `Ctrl+F5` for rerun).
  - `tasks.json` — Custom tasks runner configuration (`hide: always`, `show_summary: false`) for instant shell cleanup.
  - `zed-run` — Multi-language standalone Code Runner script (Python, Rust, C, C++, Go, JS/TS, Bash, Lua) that runs interactively, handles `Ctrl+C` gracefully without tracebacks, and automatically drops into an interactive shell upon exit.
- `system/` — Linux kernel sysctl parameters (`99-zram.conf`) and zram-generator configurations (`zram-generator.conf`).
- `scripts/` — Packaging credential backup and restore helpers (`backup_packaging_keys.sh`, `restore_packaging_keys.sh`).
- `wsl.conf` — Distribution-level WSL configuration (`/etc/wsl.conf`) with systemd init, metadata options, and Windows interop.
- `.wslconfig` — Windows-side global WSL2 resource configuration (`%USERPROFILE%\.wslconfig`) with RAM caps, CPU allocation, sparse VHD, and gradual memory reclaim.
- `.gemini/config/skills/` — Antigravity / Gemini CLI custom skills:
  - `engineer` — Universal Master Engineering Craftsmanship & UI/UX Architecture Standard. Synthesizes deep module architecture, anti-speculative simplicity, TDD discipline, 6-phase bug diagnosis, frontier grilling, spec slicing, two-axis code review, surgical diff invariants, contract-first API governance, zero-downtime database migrations, token & context budgeting, adversarial dual-review loops, and multi-platform packaging, alongside 74 production design systems across 8 archetypes, OKLCH token engines, Tailwind v3/v4, component blueprints, fluid layout architecture, spring motion physics, WCAG AAA accessibility, and Core Web Vitals performance.

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

## Acknowledgements & Credits

The `engineer` autonomous agent skill synthesizes battle-tested principles, protocols, and design systems from the open-source community:

- **[VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md)** (MIT License) — Curated collection of 74 production design systems, brand archetypes, and OKLCH color tokens.
- **[mattpocock/skills](https://github.com/mattpocock/skills)** (MIT License) — Agentic software engineering workflows, deep module architecture, frontier grilling, TDD lifecycle, and two-axis code review.
- **[benavlabs/vibe-check](https://github.com/benavlabs/vibe-check)** (MIT License) — 17-category zero-trust defensive security standard, automated audit loops, and manual penetration testing checklists.
- **[affaan-m/ECC](https://github.com/affaan-m/ECC)** (MIT License) — Silent failure audits, adversarial dual-review loop ("Santa Method"), contract-first schema workflows, zero-downtime migrations, and token & context budgeting heuristics.
- **[forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills)** (MIT License) — Surgical diff invariants, anti-speculative simplicity heuristics, line traceability discipline, and proactive confusion management.

## License

This repository is open-sourced under the [MIT License](LICENSE).
