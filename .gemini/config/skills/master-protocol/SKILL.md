---
name: master-protocol
description: >-
  Master Engineering Craftsmanship, Linux Systems Architecture, Packaging Pipelines,
  and Pair-Programming Protocol for <developer>. Enforces zero-warning
  standards, deep module design, bug diagnosis loops, multi-distro packaging rules,
  WSL2 optimization, and authentic humanized communication.
---

# Master Engineering & Pair-Programming Protocol

A comprehensive operational and behavioral system combining deep systems engineering, Linux packaging pipelines, software design principles, and authentic human technical communication.

---

## 1. Developer Profile & Operating Identity

- **Developer**: <developer>
- **Domain Focus**: Systems Programming (Rust/C), Linux Post-Install & OS Architecture, Full-Stack Web (React 19 / TypeScript / Vite), AI/ML & Data Engineering.
- **Communication Style**: Direct, concise, fact-driven. Comfortable with natural English and Hinglish technical cadence. Zero tolerance for conversational fluff, false enthusiasm, or AI buzzwords.
- **Craftsmanship Bar**:
  - **Zero Warnings**: Zero compiler warnings, zero clippy warnings (`cargo clippy --all-targets --all-features -- -D warnings`), zero linter errors, strict bash `set -euo pipefail`.
  - **Performance First**: Favor direct kernel syscalls (`libc`), `/proc` and `/sys` parsing, and persistent caching over spawning heavy subshells or invoking external CLI binaries.
  - **Privilege Separation & Idempotency**: Strict separation between user sessions and root actions. Every script must be safe, repeatable, and feature a true zero-touch `--dry-run` mode.

---

## 2. Hard-Learned Battle Rules (Never Repeat)

### ❌ Ubuntu Launchpad PPA & Debian Packaging
1. **Ubuntu 24.04 (Noble) MSRV**: Noble builder nodes run `rustc 1.75.0`. Always strip `edition = "2024"` and `rust-version` lines from `vendor/` before packaging:
   ```bash
   find vendor/ -name "Cargo.toml*" -exec sed -i 's/edition = "2024"/edition = "2021"/g' {} +
   find vendor/ -name "Cargo.toml*" -exec sed -i '/rust-version/d' {} +
   ```
2. **Offline Build Enclosure**: Launchpad workers have zero internet access. Always run `cargo vendor vendor/`, configure `.cargo/config.toml` (`replace-with = "vendored-sources"`), and pass `--offline` in `debian/rules`.
3. **Tarball Immutability**: Never re-upload a changed `.orig.tar.gz` under the same version. Launchpad will reject with a hash mismatch error. Always bump the micro-revision (e.g. `0.5.0.3`).
4. **Debhelper Compat**: Never define both `debian/compat` and `debhelper-compat (= 13)` in `debian/control`. Delete `debian/compat`.

### ❌ Fedora Copr
1. **GitHub Webhooks**: Copr Git SCM listens strictly to **Push events** (commits and tags). Never configure only "Releases", or Copr will silently drop the build.
2. **EPEL Target Separation**: Keep Copr builds targeted to Fedora (`fedora-40`, `rawhide`). Do not enable EPEL without explicit toolchain overrides.

### ❌ Secrets & Disaster Recovery
- Never commit GPG private keys, Copr API tokens (`~/.config/copr`), or SSH keys (`~/.ssh/id_ed25519`) to Git repositories.
- Use `backup_packaging_keys.sh` to produce an AES-256 password-protected zip file for secure cloud backup.

---

## 3. The Skills & Architecture Discipline

### 🏛️ Deep Module Design (`codebase-design`)
- **Deep Modules**: High leverage at the interface. Small, clean interface hiding rich internal complexity behind a clean seam.
- **Shallow Modules (Banned)**: Thin wrappers that merely pass data through without doing meaningful work.
- **Seams**: The public boundary where behavior is altered and tested. Test only at pre-agreed public seams.
- **The Deletion Test**: If deleting a module causes complexity to reappear across N callers, it was earning its keep. If complexity vanishes, it was a pass-through.

### 🔄 The Main Engineering Flow
1. **`/grill-with-docs`**: Sharpens ideas round-by-round, updating `CONTEXT.md` (ubiquitous glossary) and `docs/adr/` (Architecture Decision Records) as decisions crystallize.
2. **`/prototype` & `/handoff`**: Used when a question requires runnable verification (state transitions or UI feel). Detour to a throwaway branch via `/handoff`, then hand findings back.
3. **`/to-spec`**: Synthesizes the discussion into a structured specification (problem, solution, numbered user stories, implementation decisions, testing seams, out of scope).
4. **`/to-tickets`**: Slices the spec into vertical **tracer-bullet tickets** with explicit **blocking edges** (blockers first).
5. **`/implement`**: Builds frontier tickets in fresh context windows, driving `/tdd` at agreed seams, and concluding with `/code-review`.

### 🧪 Test-Driven Development (`tdd`)
- **Vertical Slices**: One test $\rightarrow$ one minimal implementation $\rightarrow$ repeat.
- **Banned Anti-patterns**:
  - *Implementation-coupled*: Mocking internal private methods or checking private state.
  - *Tautological*: Asserting against expressions that duplicate the production logic.
  - *Horizontal slicing*: Writing all tests upfront before any implementation.

### 🔍 Bug Diagnostics (`diagnosing-bugs`)
- **Phase 1 (Tight Feedback Loop)**: Never hypothesize until a single, fast, deterministic command exists that goes **red on this exact symptom**.
- **Phase 2 (Minimization)**: Shrink the reproduction until every remaining input and step is load-bearing.
- **Phase 3 & 4 (Hypotheses & Instrumentation)**: Formulate 3–5 falsifiable hypotheses. Instrument with unique tagged logs (`[DEBUG-a4f2]`) so cleanup is a single `grep`.
- **Phase 5 & 6 (Fix & Regression)**: Write the regression test at the true seam, verify the fix passes, re-test the original scenario, and remove all debug tags.

### 📐 Code Review (`code-review`)
Execute two-axis reviews in parallel sub-agents:
1. **Standards Axis**: Checks against documented repo rules + Fowler code smells (Feature Envy, Primitive Obsession, Shotgun Surgery, Divergent Change).
2. **Spec Axis**: Verifies that the implementation delivers what the spec requested without scope creep.

---

## 4. Shell, Terminal & WSL2 Environment

### WSL2 Host Optimization
- Configure `%USERPROFILE%\.wslconfig`:
  ```ini
  [wsl2]
  swap=2GB

  [experimental]
  autoMemoryReclaim=gradual
  sparseVhd=true
  ```
- Configure `/etc/wsl.conf` with `systemd=true`, `options="metadata,umask=22,fmask=11"`, and Windows PATH interop enabled.
- Host executable launchers: `anti .` (Google Antigravity IDE), `code .` (VS Code), `explorer .` (Windows Explorer).

### Shell & Starship Standards
- Keep `eval "$(starship init zsh)"` unconditionally at the very end of `~/.zshrc`.
- Use standalone plugin cloning (`zsh-autosuggestions`, `zsh-syntax-highlighting`) under `~/.zsh/plugins/`.
- Provide modern CLI aliases (`eza`, `bat`/`batcat`, `ripgrep`, `fzf`, `zoxide`, `yazi`).

---

## 5. Authentic Technical Writing (Humanizer Protocol)

When drafting documentation, responses, commit messages, or code reviews:
- **No Em-Dash Overuse**: Use a comma, colon, period, or conjunction instead.
- **No Contrast-Reframe Crutches**: Strip *"It's not X, it's Y"* or *"not just X, but Y"*. State the fact directly.
- **No Forced Rule of Three**: Use however many items actually belong.
- **No Dangling Participle Tack-ons**: Remove fake-depth endings like *"...highlighting its importance"* or *"...underscoring its value"*.
- **No AI Filler or Openers**: Strip *"It's important to note"*, *"In today's fast-paced world"*, *"Let's dive in"*, *"Delighted to help"*.
