# Multi-Platform Packaging & Distribution Pipelines

A comprehensive standard for distributing native binaries, libraries, and applications across Linux distributions, macOS, Windows, and container environments.

---

## 1. Distribution Channels Matrix

```
┌───────────────────────┬─────────────────────────┬───────────────────────────┐
│ Ecosystem             │ Manifest Location       │ Automation Pipeline       │
├───────────────────────┼─────────────────────────┼───────────────────────────┤
│ Ubuntu / Debian       │ packaging/debian/       │ Launchpad PPA (dpkg +     │
│                       │ (control, rules)        │ dput / FTP upload)        │
│ openSUSE (Tumbleweed  │ packaging/opensuse/     │ openSUSE OBS (osc CLI +   │
│ / Leap)               │ (*.spec, _service)      │ download_url service)     │
│ Fedora / RHEL / CentOS│ packaging/rpm/          │ Fedora Copr (copr-cli +   │
│ (Rocky / AlmaLinux)   │ (*.spec)                │ EPEL 9/10 chroots)        │
│ Arch Linux            │ packaging/arch/         │ AUR (makepkg, .SRCINFO)   │
│                       │ (PKGBUILD)              │                           │
│ macOS / Linux         │ packaging/homebrew/     │ Homebrew Tap Formula      │
│                       │ (*.rb)                  │                           │
│ Windows (Scoop)       │ packaging/scoop/        │ Scoop Bucket Manifest     │
│                       │ (*.json)                │                           │
│ Windows (WinGet)      │ packaging/winget/       │ Microsoft WinGet PKGs     │
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

#### 1. Lifecycle and Revisions
- Initial release for a version uses revision `1~ppa1~<dist>` (example: `0.19.0-1~ppa1~noble`).
- Any bug fix or re-upload for that same upstream release version MUST bump the revision to `1~ppa2~<dist>`, `1~ppa3~<dist>`, etc.

#### 2. The Immutable Orig Tarball and Cryptographic DSC Invariant
- Launchpad permanently records the `.orig.tar.gz` binary and its SHA256 checksum upon the initial `ppa1` upload.
- Launchpad strictly rejects any revision upload (`ppa2+`) whose `.dsc` specifies a different size or checksum for `orig.tar.gz`:
  `Rejected: File <pkg>_<ver>.orig.tar.gz already exists, but uploaded version has different contents`.
- Revision Upload Protocol:
  1. Always verify if `orig.tar.gz` is already in the Launchpad pool (query `https://launchpad.net/~<USER>/+archive/ubuntu/<PPA>/+files/<PKG>_<VER>.orig.tar.gz`).
  2. If present, download the exact binary from Launchpad librarian.
  3. Unpack that exact archive into the build staging tree so upstream source files match byte for byte.
  4. Overlay the updated `debian/` directory on top of the unpacked tree.
  5. Build using `dpkg-buildpackage -S -sd -nc -d -k"<GPG_KEY>"` so that `.orig.tar.gz` is excluded from `.changes`, while the `.dsc` references the identical SHA256 checksum recorded in Launchpad.

#### 3. Offline Vendoring and Lockfile Drift Defense
- Launchpad buildds run in network-isolated environments (`--offline`).
- If `Cargo.lock` pins a crate version but the vendored source contains a different version, Cargo fails with candidate mismatch.
- In `debian/rules`, under `override_dh_auto_build`, implement dynamic lockfile alignment checks before running `cargo build --release --offline`:
  ```makefile
  override_dh_auto_build:
  	mkdir -p .cargo
  	cp debian/vendor-config.toml .cargo/config.toml
  	find vendor -name Cargo.toml -exec sed -i -e 's/edition = "2024"/edition = "2021"/' -e 's/rust-version = "1.85"/rust-version = "1.74"/' {} +
  	if grep -q 'version = "1.1.0"' vendor/clap_lex/Cargo.toml 2>/dev/null; then \
  		sed -i '/name = "clap_lex"/,/checksum =/ { s/version = "1.0.0"/version = "1.1.0"/; s/<OLD_HASH>/<NEW_HASH>/; }' Cargo.lock; \
  	fi
  	cargo build --release --offline
  ```

#### 4. Ubuntu 24.04 (Noble) Cargo 1.75 Compatibility
- Ubuntu 24.04 LTS ships Cargo 1.75, which fails on Rust Edition 2024 or `rust-version = "1.85+"`.
- Patch vendored crates by downgrading `edition = "2024"` to `2021` and stripping `rust-version`.
- Clear file hashes in `.cargo-checksum.json` while preserving package hashes so Cargo accepts modified manifests without checksum errors.

---

### B. openSUSE Open Build Service (OBS)

#### 1. Manifest Architecture
- Spec file: `packaging/opensuse/<name>.spec` defining `Version: X.Y.Z`, `Release: 0`, and offline source layout.
- Service manifest: `packaging/opensuse/_service` using `download_url` to pull upstream release tarballs.
- Offline dependencies: `packaging/opensuse/vendor.tar.zst` containing pre-vendored crates compressed with Zstandard.

#### 2. The Critical _service Version Synchronization Invariant
- When bumping `Version:` in `<name>.spec`, you MUST simultaneously update `<param name="path">` and `<param name="filename">` inside `_service`.
- If `_service` is left with a stale tag (example: `v0.18.3.tar.gz`), OBS will fetch the old archive while `%prep` searches for `<name>-0.19.0.tar.gz`, failing with:
  `error: File /home/abuild/rpmbuild/SOURCES/<name>-<version>.tar.gz: No such file or directory`.
- When using helper scripts, always ensure `_service` is checked out, updated, and committed alongside the spec file.

#### 3. Offline Build Configuration
- In `%prep`, unpack `vendor.tar.zst` using `tar -I zstd -xf %{SOURCE1}`.
- Configure `.cargo/config.toml` to redirect crates.io:
  ```toml
  [source.crates-io]
  replace-with = "vendored-sources"

  [source.vendored-sources]
  directory = "vendor"
  ```
- Invoke builds strictly with `--offline` (`cargo build --release --offline`).

#### 4. 32-bit Architecture Portability Safeguard
- In C and libc bindings, integer types vary by target architecture. For example, `tm_gmtoff` in `libc::tm` is `c_long` (32-bit integer on `i586`, 64-bit on `x86_64`).
- Avoid direct assignment to fixed 64-bit types. Always explicitly cast (`tm.tm_gmtoff as i64`) to guarantee compilation on 32-bit chroots.

#### 5. OBS Automation Workflow
```bash
osc -A https://api.opensuse.org checkout <PROJECT> <PACKAGE>
cp packaging/opensuse/<name>.spec <PROJECT>/<PACKAGE>/
cp packaging/opensuse/vendor.tar.zst <PROJECT>/<PACKAGE>/
cp packaging/opensuse/_service <PROJECT>/<PACKAGE>/
cd <PROJECT>/<PACKAGE>
osc addremove
osc commit -m "Release version <VERSION>"
osc results
```

---

### C. Fedora & RHEL / CentOS Stream Copr (RPM Builds)
1. Bump `Version: X.Y.Z` in `packaging/rpm/<name>.spec`.
2. Push git release tag so GitHub archive is live.
3. For enterprise distributions (RHEL 9, RHEL 10, Rocky Linux, AlmaLinux), enable EPEL chroots (`epel-9-x86_64`, `epel-9-aarch64`, `epel-10-x86_64`, `epel-10-aarch64`).
4. Trigger build across all active chroots:
   ```bash
   copr-cli build-package --name <name> <USER>/<REPO>
   ```

---

### D. Windows Scoop & WinGet

#### 1. Scoop Bucket Manifest
- Maintain JSON manifest at `bucket/<name>.json`.
- On release, compute SHA256 of the Windows release zip or tarball.
- Update `version`, `url`, and `hash` fields.
- Commit and push to custom scoop bucket repository.

#### 2. Microsoft WinGet
- Test or generate manifests using `wingetcreate`:
  ```powershell
  wingetcreate update <Publisher.Package> --version <VERSION> --urls <RELEASE_ZIP_URL>
  ```
- Submit pull request to `microsoft/winget-pkgs`.

---

### E. Homebrew Tap (Formulae)
1. Compute SHA256 of the release tarball:
   ```bash
   curl -sL "https://github.com/<USER>/<REPO>/archive/refs/tags/v<VERSION>.tar.gz" | sha256sum
   ```
2. Update `url` and `sha256` in `Formula/<name>.rb`.
3. Commit and push to `homebrew-tap` repository `main` branch.

---

### F. Arch Linux User Repository (AUR)
1. Update `pkgver=<VERSION>` and reset `pkgrel=1` in `PKGBUILD`.
2. Compute source SHA256 checksums with `updpkgsums`.
3. Generate metadata: `makepkg --printsrcinfo > .SRCINFO`.
4. Test local build with `makepkg -sfc`.
5. Commit and push to AUR git repository.

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
