# Multi-Platform Packaging & Distribution Pipelines

A comprehensive standard for distributing native binaries, libraries, and applications across Linux distributions, macOS, Windows, and container environments.

---

## 1. Distribution Channels Matrix

```
┌───────────────────────┬─────────────────────────┬───────────────────────────┐
│ Ecosystem             │ Manifest Location       │ Automation Pipeline       │
├───────────────────────┼─────────────────────────┼───────────────────────────┤
│ Ubuntu / Debian       │ packaging/debian/       │ Launchpad PPA (debuild +  │
│                       │ (control, rules)        │ dput)                     │
│ Fedora / RHEL         │ packaging/rpm/          │ Fedora Copr (copr-cli)    │
│                       │ (*.spec)                │                           │
│ Arch Linux            │ packaging/arch/         │ AUR (makepkg, .SRCINFO)   │
│                       │ (PKGBUILD)              │                           │
│ macOS / Linux         │ packaging/homebrew/     │ Homebrew Tap Formula      │
│                       │ (*.rb)                  │                           │
│ Windows 10/11         │ packaging/winget/       │ Microsoft WinGet PKGs     │
│                       │ (*.yaml)                │ (wingetcreate)            │
│ Android               │ packaging/termux/       │ Termux Packages Repo      │
│                       │ (build.sh)              │                           │
│ Alpine Linux          │ packaging/alpine/       │ Alpine aports (APKBUILD)  │
│ Nix / NixOS           │ packaging/nix/          │ Nixpkgs / Flakes          │
└───────────────────────┴─────────────────────────┴───────────────────────────┘
```

---

## 2. Channel-Specific Release Protocols

### A. Ubuntu Launchpad PPA (Debian Source Packages)
1. Update `packaging/debian/changelog` with standard version string (e.g. `0.7.0-1~ppa1~noble`).
2. Build vendored source tree with `.cargo/config.toml` redirecting crates.io to `vendor/`.
3. Sign source package with maintainer GPG key:
   ```bash
   debuild -S -sa -d -k"<GPG_KEY_ID>" -p"gpg --batch --passphrase <PASSPHRASE> --pinentry-mode loopback"
   ```
4. Upload changes archive to Launchpad:
   ```bash
   dput ppa:<USER>/<PPA_NAME> <PACKAGE>_<VERSION>_source.changes
   ```

### B. Fedora Copr (RPM Builds)
1. Bump `Version: X.Y.Z` in `packaging/rpm/<name>.spec`.
2. Push git release tag so GitHub archive is live.
3. Trigger build across all active Fedora chroots:
   ```bash
   copr-cli build-package --name <name> <USER>/<REPO>
   ```

### C. Homebrew Tap (Formulae)
1. Compute SHA256 of the release tarball:
   ```bash
   curl -sL "https://github.com/<USER>/<REPO>/archive/refs/tags/v<VERSION>.tar.gz" | sha256sum
   ```
2. Update `url` and `sha256` in `Formula/<name>.rb`.
3. Commit and push to `homebrew-tap` repository `main` branch.

### D. Microsoft WinGet
1. Test or generate manifests using `wingetcreate`:
   ```powershell
   wingetcreate update <Publisher.Package> --version <VERSION> --urls <RELEASE_ZIP_URL>
   ```
2. Submit pull request to `microsoft/winget-pkgs`.

---

## 3. Disaster Recovery: Key Management & Backup

- **GPG & SSH Key Backup**: Maintain encrypted, permissions-restricted archives of maintainer signing keys (`backup_packaging_keys.sh` / `restore_packaging_keys.sh`).
- **Permissions**: Restrict key directories strictly to `chmod 700 ~/.gnupg` and `chmod 600 ~/.gnupg/*`.
- **Offline Safety**: Never store plain-text passphrases in unencrypted git repos or shared environments.

---

## 4. Universal Pre-Push CI/CD Simulation & Matrix Quality Gate (`ci-check`)

Never push commits or open pull requests without simulating the entire remote CI pipeline locally. Dissect `.github/workflows/*.yml` to identify all matrix runner environments, linters, target architectures, and test commands.

### 4.1 Cross-Platform Compilation Matrix
For compiled codebases (Rust, Go, C/C++), verify all target architectures and platforms defined in `.github/workflows`:
- **Linux**: `cargo check --target x86_64-unknown-linux-gnu --all-targets`
- **Windows**: `cargo check --target x86_64-pc-windows-gnu --all-targets`
- **macOS (Darwin)**: `cargo check --target x86_64-apple-darwin --all-targets`
*(Pre-install target triples via `rustup target add <triple>`)*

### 4.2 Script & Test Automation Linting
Run ShellCheck on every bash/sh script, installer, and test suite:
- `shellcheck <script.sh> tests/*.sh` (strict 0 errors, 0 warnings).
- For dynamic mock patterns or shared variable files, use explicit, scoped directives (`# shellcheck disable=SC...`).

### 4.3 Linters & Formatting
Run linters with warnings treated as errors:
- Rust: `cargo clippy --all-targets --all-features -- -D warnings && cargo fmt --check`
- TypeScript/JavaScript: `pnpm lint && pnpm prettier --check . && tsc --noEmit`
- Python: `ruff check . && ruff format --check . && mypy .`

### 4.4 Automated Test Suite
- Run full unit, integration, and CLI test suites locally:
  - `cargo test --all-targets --all-features`
  - `make test` / `bash tests/run_tests.sh`
  - `pnpm test`

### 4.5 Clean Git State & Signed Commits
- Working tree 100% clean, zero untracked artifacts.
- Cryptographic SSH commit signature (`git commit -S`).

---

## 5. Post-Push Remote Verification & Zero-Red-Pipeline Invariant (`gh-verify`)

Pushed commits are NOT considered complete until verified green on the remote server:

### 5.1 Remote CI Monitoring Protocol
Immediately following `git push origin <branch>`:
1. List active runs: `gh run list --repo <user>/<repo> --limit 1`
2. Watch the pipeline to completion: `gh run watch <run_id> --repo <user>/<repo>`
3. Invariant: Every job in the pipeline matrix must report `✓ completed success`. Never close a task, deliver a final response, or assume success while a remote pipeline is red or in progress.

### 5.2 P0 Remote Breakage Triage Protocol
If any remote check fails on GitHub Actions:
1. **Freeze**: Halt and treat the failure as an active build break.
2. **Inspect**: Fetch logs immediately with `gh run view --log --job=<job_id> --repo <user>/<repo>` or `gh run view <run_id> --log-failed`.
3. **Reproduce**: Replicate the failing target/runner environment locally (e.g. Darwin target, specific linter version).
4. **Fix & Sign**: Apply minimal root-cause fix, run local simulation suite, commit with cryptographic SSH signature (`git commit -S`), and push.
5. **Re-Verify**: Watch the newly triggered run until 100% green.
