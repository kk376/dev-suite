# Dotfiles

Personal configuration and dotfiles.

## Files
- `setup.md` — Complete developer environment setup, CLI toolchain installation, WSL2 optimizations, and packaging master guide (Ubuntu PPA, Fedora Copr, Homebrew Tap, Arch AUR).
- `.zshrc` — Zsh configuration with Starship prompt, custom aliases, Antigravity IDE remote launcher, and plugins.
- `starship.toml` — Starship prompt theme configuration.
- `.gemini/config/skills/` — Antigravity / Gemini CLI custom skills:
  - `master-protocol` — Master engineering craftsmanship, Linux systems architecture, multi-distro packaging rules, bug diagnosis loops, and pair-programming protocol.
  - `engineering-craft` — Unified engineering craftsmanship standards and humanized writing system.
  - `humanizer` — Wikipedia-derived AI writing cleanup checklist.

## Quick Setup
```bash
# Clone and symlink/sync to home directory
git clone git@github.com:<github-user>/dotfiles.git ~/.dotfiles
mkdir -p ~/.gemini/config/skills
cp -r ~/.dotfiles/.gemini/config/skills/* ~/.gemini/config/skills/
cp ~/.dotfiles/.zshrc ~/.zshrc
mkdir -p ~/.config && cp ~/.dotfiles/starship.toml ~/.config/starship.toml
```
