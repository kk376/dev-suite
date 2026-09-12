# Dev Suite

Personal developer suite, environment configurations, multi-distro packaging automation, and autonomous agent engineering & design skills.

## Files & Modules
- `POSTGRES_PGADMIN_GUIDE.md` — Complete setup guide for PostgreSQL 18 (official PGDG) and pgAdmin 4 Desktop on Fedora Workstation.
- `FEDORA_DESKTOP_TIPS.md` — Fedora desktop fixes guide: Bluetooth A2DP audio restoration, Chrome Wayland video decoding, and GPU verification.
- `FEDORA_MIGRATION.md` — WSL2 (Ubuntu) to Native Fedora Workstation migration and restore master guide.
- `setup.md` — Complete developer environment setup, CLI toolchain installation, WSL2 optimizations, and packaging master guide (Ubuntu PPA, Fedora Copr, Homebrew Tap, Arch AUR).
- `.zshrc` — Zsh configuration with Starship prompt, custom aliases, PATH exports, and plugins.
- `fish/` — Fish shell configuration (`config.fish`) with Tokyo Night autosuggestions, Starship prompt, custom aliases, and `SUDO_PROMPT`.
- `starship.toml` — Starship prompt theme configuration.
- `cliamp/` — Retro terminal music player configuration (`config.toml`) with YouTube Music provider and Chrome GNOME Keyring cookie integration.
- `yt-dlp/` — Media extractor configuration (`config`) enabling Node.js runtime for challenge deciphering.
- `kitty/` — Kitty GPU-accelerated terminal configuration (`kitty.conf`) with Tokyo Night palette, FiraCode ligatures, and custom desktop launcher.
- `ghostty/` — Ghostty GPU-accelerated terminal configuration (`config.ghostty`) matching Kitty's Tokyo Night palette, Fira Code typography, full opacity, bottom tabs, clipboard copy/paste, right-click paste, and Fish shell integration.
- `zed/` — Zed Editor complete configuration:
  - `settings.json` — One Dark Pro Glass theme, Material Icon Theme, FiraCode ligatures, minimap, autosave, and VS Code keymap base.
  - `keymap.json` — Code Runner keybindings (`Ctrl+Alt+N` and `F5` to trigger `Run current file`, `Ctrl+F5` for rerun), and Windows-style duplicate line shortcuts (`Alt+Shift+Down` / `Alt+Shift+Up`).
  - `tasks.json` — Custom tasks runner configuration (`hide: always`, `show_summary: false`) for instant shell cleanup.
  - `zed-run` — Multi-language standalone Code Runner script (Python, Rust, C, C++, Go, JS/TS, Bash, Lua) that runs interactively, handles `Ctrl+C` gracefully without tracebacks, and automatically drops into an interactive shell upon exit.
- `vscode/` & `vscodium/` — Visual Studio Code and VSCodium configurations:
  - `settings.json` — Dark Modern theme, FiraCode Nerd Font ligatures, always-on word wrap, multiple tabs, and Emmet snippet integration.
  - `keybindings.json` — Windows-style duplicate line shortcuts (`Shift+Alt+Down` and `Shift+Alt+Up`) bypassing Linux GNOME Mutter workspace shortcuts.
  - `snippets/` & `emmet/` — Dark mode HTML boilerplate snippets and Emmet configs.
- `system/` — Linux kernel sysctl parameters (`99-zram.conf`) and zram-generator configurations (`zram-generator.conf`).
- `glab/` — GitLab CLI (`glab`) configuration (`config.yml`, `aliases.yml`) configured for SSH git protocol, dark glamour markdown rendering, and GitLab.com integration.
- `scripts/` — Full system and packaging credential backup and restore helpers (`backup_full_system.sh`, `backup_packaging_keys.sh`, `restore_packaging_keys.sh`).
- `wsl.conf` — Distribution-level WSL configuration (`/etc/wsl.conf`) with systemd init, metadata options, and Windows interop.
- `opencode/` — OpenCode AI coding agent configurations:
  - `opencode.json` — 100% offline local Ollama provider mapping with 20,480 (`20k`) context window and zero cloud telemetry.
  - `opencode` — Zero-latency terminal launcher that triggers asynchronous VRAM model preloading on start and traps exit signals to immediately purge VRAM on exit.
- `ollama/` — Local LLM engine configurations:
  - `ollama.service` — Hardened systemd user service with FlashAttention (`OLLAMA_FLASH_ATTENTION=1`), strict serial execution (`OLLAMA_NUM_PARALLEL=1`), single-model locking (`OLLAMA_MAX_LOADED_MODELS=1`), and 5-minute VRAM auto-eviction (`OLLAMA_KEEP_ALIVE=5m`).
  - `Modelfile.qwen2.5-coder-3b` — Hardware-optimized Qwen 2.5 Coder 3B definition with 20,480 (`20k`) context window, deterministic temperature (`0.2`), top-p (`0.9`), and software engineering role calibration.
- `.gemini/config/skills/` — Antigravity / Gemini CLI custom skills:
  - `engineer` — Universal Master Engineering Craftsmanship, UI/UX Architecture, Zero-Trust Security & Search Engine Optimization Standard. Synthesizes deep module architecture, anti-speculative simplicity, TDD discipline, 6-phase bug diagnosis, frontier grilling, spec slicing, two-axis code review, surgical diff invariants, contract-first API governance, zero-downtime database migrations, token & context budgeting, adversarial dual-review loops, pre-push CI/CD simulation & GitHub Actions remote verification, technical search architecture (Technical SEO, Schema.org JSON-LD graphs, GEO/AEO/LLMO citation physics, Google E-E-A-T quality governance, agent-friendly DOM, pSEO topic clusters, CI/CD SEO drift gates), deterministic LLM evals & 4-pillar candidate/portfolio assessment rubrics, bounding-box document layout physics & dual-layer ATS verification, deterministic agent hooks & Unicode hygiene, universal cross-platform skill packaging, diff-based AI generation contracts, monotonic operation budgets, Next.js Server Action zero-trust security, and Swiss International design system architecture, alongside 74 production design systems across 8 archetypes, OKLCH token engines, Tailwind v3/v4, component blueprints, fluid layout architecture, spring motion physics, WCAG AAA accessibility, and Core Web Vitals performance.
  - `linkedin` — LinkedIn Profile Architecture, 2026 Feed Physics & Content Operations. Synthesizes the 9-component profile conversion scorecard, 220-char headline formula, 7-step About section with 265-char mobile fold, 20 hook formulas (F1–F20), 10 founder content angles (A1–A10), 4 weekly content pillars (Conviction, Building in Public, The Math, Proof), 2026 feed algorithm heuristics (360Brew arXiv:2501.16450, AuthoredUp reach data, external link suppression & first-comment strategy), Humanizer AI-tell purging (25+ banned words, em-dash ceiling ≤1/100 words), untrusted scraped content prompt-injection quarantine, and three-tier publishing pipelines.

## Quick Setup
```bash
# Clone and deploy to home directory
git clone git@github.com:kk376/dev-suite.git ~/code/dev-suite
mkdir -p ~/.gemini/config/skills
cp -r ~/code/dev-suite/.gemini/config/skills/* ~/.gemini/config/skills/
cp ~/code/dev-suite/.zshrc ~/.zshrc
mkdir -p ~/.config && cp ~/code/dev-suite/starship.toml ~/.config/starship.toml

# Deploy OpenCode & Ollama local AI configurations
mkdir -p ~/.config/opencode && cp ~/code/dev-suite/opencode/opencode.json ~/.config/opencode/opencode.json
mkdir -p ~/.local/bin && cp ~/code/dev-suite/opencode/opencode ~/.local/bin/opencode && chmod +x ~/.local/bin/opencode
mkdir -p ~/.config/systemd/user && cp ~/code/dev-suite/ollama/ollama.service ~/.config/systemd/user/ollama.service
systemctl --user daemon-reload && systemctl --user enable --now ollama
ollama create qwen2.5-coder:3b -f ~/code/dev-suite/ollama/Modelfile.qwen2.5-coder-3b

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
- **[AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo)** (MIT License) — Technical SEO architecture, Schema.org semantic graphs, Generative Engine Optimization (GEO/AEO/LLMO), Google E-E-A-T quality governance, agent-friendly DOM architecture, and CI/CD SEO drift monitoring.
- **[interviewstreet/hiring-agent](https://github.com/interviewstreet/hiring-agent)** (MIT License) — 4-pillar candidate scoring rubrics, unbiased LLM evaluation pipelines, GitHub external signal harvesting, and adversarial document sanitization.
- **[MadsLorentzen/ai-job-search](https://github.com/MadsLorentzen/ai-job-search)** (MIT License) — Bounding-box document layout physics, dual-layer ATS/parser verification, knapsack relevance-weighted trimming, and offline dashboard architecture.
- **[guillaumemeyer/watermarks-remover](https://github.com/guillaumemeyer/watermarks-remover)** (MIT License) — Deterministic agent harness hooks (`PostToolUse`), atomic sibling swap file modification, Layer A invisible Unicode/Trojan Source scrubbing, and zero-LLM mathematical stylometry.
- **[srbhr/Resume-Matcher](https://github.com/srbhr/Resume-Matcher)** (Apache License 2.0) — Diff-based AI generation contracts, anti-hallucination invariants, monotonic ContextVar deadline budgeting, Server Action security, and Swiss International design system architecture.
- **[sergebulaev/linkedin-skills](https://github.com/sergebulaev/linkedin-skills)** (MIT License) — 11-skill LinkedIn content operations bundle, Publora publishing integration, 360Brew algorithm heuristics, 9-component profile conversion scorecard, 20 hook formulas, 10 founder content angles, and humanizer AI-tell audit suite.

## License

This repository is open-sourced under the [MIT License](LICENSE).
