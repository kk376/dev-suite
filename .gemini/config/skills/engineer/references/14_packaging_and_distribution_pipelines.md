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

## 4. Universal Release Quality Gate Checklist

Before creating a release tag or publishing package manifests:

1. **Compilation Matrix**:
   - `cargo check --target x86_64-unknown-linux-gnu` (Linux)
   - `cargo check --target x86_64-pc-windows-gnu` (Windows Win32)
2. **Zero Linter Warnings**:
   - `cargo clippy --all-targets --all-features -- -D warnings`
   - Strict bash: `shellcheck <scripts>`
   - TypeScript: `tsc --noEmit`
3. **Format Compliance**:
   - `cargo fmt --check` / `prettier --check`
4. **Automated Test Matrix**:
   - `cargo test` / `npm test` / `bash tests/run_tests.sh` (100% green).
5. **Clean Git State**:
   - Working tree clean, zero untracked artifacts, tags pushed to remote.
