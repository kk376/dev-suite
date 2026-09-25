# Open Source Upstream RFCs, Maintainer Collaboration & Prototype Maturation

A structured discipline for navigating the journey from creative prototype to production-grade upstream contribution in established open-source ecosystems.

---

## 1. The Vibe-to-Upstream Pipeline

Open source thrives on human creativity, user-driven curiosity, and rapid experimentation. A rapid prototype or "vibe-coded" spike is an effective way to prove feasibility, explore interaction ergonomics, and demonstrate community value. However, merging into an established in-tree repository requires technical rigor, architectural alignment, and long-term maintainability.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                      THE VIBE-TO-UPSTREAM PIPELINE                          │
├───────────────────────────────┬─────────────────────────────────────────────┤
│ 1. CREATIVE SPIKE / PROTOTYPE │ Fast proof of concept, exploratory UI,      │
│                               │ validates user interest and UX feasibility  │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 2. ARCHITECTURAL RFC / FORUM  │ Early alignment with core maintainers,      │
│                               │ upstream consensus before in-tree churn     │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 3. RIGOROUS MATURATION        │ Deep module seams, bounded memory LRUs,     │
│                               │ zero-warning tests, workspace conventions   │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 4. UPSTREAM MERGE & SHIP      │ Polished PR matching core team direction    │
└───────────────────────────────┴─────────────────────────────────────────────┘
```

### Principles of Prototype Maturation
- **Creativity Proves Feasibility, Engineering Ensures Longevity**: Do not apologize for starting with a rapid spike or prototype. Use it as live evidence of what users want, then partner with maintainers to shape the underlying architecture.
- **Pivot Early from Monolithic PR to RFC**: When an initiative introduces a brand-new domain capability (such as a built-in document viewer, a new runtime engine, or an alternate rendering backend), do not push a massive, monolithic PR onto maintainers without prior consensus. Pivot to an RFC or community discussion while keeping the prototype branch visible as a reference implementation.
- **Maintainers are Mentors, Not Gatekeepers**: Staff engineers and core contributors review code with decades of context on compiler performance, platform support, and maintenance costs. Treat reviews and technical pushback as high-value architectural mentorship.

---

## 2. Upstream Discussion & RFC Etiquette

Community discussions and RFCs must be conducted with maximum respect for maintainer time and community attention.

### A. Search Before You Open
Before opening a new GitHub Discussion, issue, or RFC:
1. Search active discussions, closed issues, and merged/closed pull requests using multiple domain keywords.
2. Identify whether a canonical, high-traction discussion already exists with existing upvotes, comments, and subscriber lists.
3. If a high-traction canonical thread exists (e.g. a long-standing feature request with dozens of community upvotes), **do not create a splinter thread**. Post your prototype, architectural findings, and questions directly to the existing thread.

### B. Consolidate and Prevent Fragmentation
- **Single Source of Truth**: Splintering community feedback across multiple separate discussion threads dilutes upvotes, confuses users, and wastes maintainer review time.
- **Clean Redirections**: If a duplicate discussion was created, immediately update it with a polite, clear notice pointing readers to the canonical discussion. Close the duplicate thread with the official `DUPLICATE` reason.
- **Link All Artifacts**: In your canonical post, clearly cross-link the prototype repository or branch, the closed/draft PR holding review comments, and concrete demonstration media (screenshots or recordings).

### C. PR Lifecycle Management
- **Never Leave Stale or Premature PRs in Review Queues**: If upstream maintainers recommend discussing high-level architecture before reviewing code, immediately convert the PR to draft or close it with a reference note.
- Keep the branch updated and clean on your fork so interested community members and reviewers can easily test it locally.

---

## 3. Maintainer Dialogue & Human Communication

Communication with upstream maintainers must be warm, direct, and free of automated fluff.

### A. Tone and Interaction Rules
- **Gratitude Without Sycophancy**: Acknowledge the reviewer's time and guidance warmly. Maintainers manage heavy issue loads; concise, respectful interactions build strong working relationships.
- **Zero Defensiveness**: When a maintainer flags a flaw (such as unbounded memory growth, improper crate structure, or an unvetted dependency), thank them for the catch and address the root cause promptly.
- **Factual, Structured Status Updates**: Report exact status without buzzwords:
  - What features are working in the prototype.
  - What automated tests pass.
  - Exactly how maintainer feedback was incorporated.
  - The open architectural questions that require core guidance (e.g. in-tree crate vs standalone extension, dynamic linking vs prebuilt binaries).

### B. Language, Voice & Maintainer Bot-Fatigue Defense
Maintainers are experiencing extreme cognitive fatigue from automated AI PR descriptions, synthetic issue comments, and bot-generated RFCs. Protect contribution credibility by strictly enforcing the Humanizer standards:
- **Zero Banned AI Vocabulary**: Never use *delve, leverage, fundamentally, streamline, harness, unlock, foster, tapestry, game-changer, beacon, testament, bespoke, landscape, pivotal, in today's fast-paced world*.
- **Total Zero-Tolerance Em-Dash Ban**: Strictly 0 em dashes (`—`) and en dashes (`–`). Never use em dashes or en dashes in maintainer discussions, PR descriptions, or comments. Unspaced em dashes (`word—word`) and spaced em dashes are an immediate AI tell that triggers maintainer bot-fatigue and flags contributions as machine-generated. Use standard commas, colons, parentheses, or clean separate sentences.
- **Specific Numbers Over Adjectives**: Always provide concrete benchmarks (*"reduces cold start by 1.8ms"*, *"cuts allocations by 42%"*) rather than empty adjectives (*"significantly improves performance"*).
- **Proper Technical Capitalization**: Enforce exact casing (*Rust, Linux, Wayland, Fedora, GNOME, POSIX*).
- **Strip Robotic Compound Hyphens**: Use natural separate words where appropriate (write *"on demand"* instead of *"on-demand"*, *"fit to view"* instead of *"fit-to-view"*, *"hot reloading"* instead of *"hot-reloading"*).
- **Direct Engineer-to-Engineer Cadence**: Speak factually and concisely. No sycophantic praise, no robotic openers (*"It is worth noting"*, *"Delighted to share"*), and zero conversational disclaimers.

---

## 4. In-Tree Monorepo & Large Codebase Conventions

Large monorepos (such as Zed, Rust, LLVM, or Linux) have strict structural and operational invariants:

### A. Adherence to Repository Rules
- Always search for and inspect repository-specific contribution guides and rule files (e.g. `.rules`, `CONTRIBUTING.md`, `ARCHITECTURE.md`).
- Follow established workspace conventions:
  - Crate or package naming must match the directory name exactly.
  - Root module paths must follow the workspace standard (e.g. `[lib] path = "src/<crate_name>.rs"` if the repo forbids `mod.rs` nesting).
  - Eliminate deprecated nesting anti-patterns (such as `mod.rs` files when the repository prefers single-file root modules).
  - Never pollute shared themes, global configuration structs, or public token registries with ad-hoc or feature-specific variables. Reuse existing semantic primitives.

### B. Targeted Build & Resource Guardrails
- **Never Run Full Workspace Builds**: In massive codebases containing dozens or hundreds of packages, running a full workspace release build consumes excessive CPU, memory, and compiler time.
- **Targeted Compilation Only**: Always scope build and test invocations strictly to the package being modified:
  - Run checks targeting only the active crate: `cargo check -j 2 -p <target_crate>`
  - Run tests targeting only the active crate: `cargo test -j 2 -p <target_crate>`
- Restrict job concurrency (`-j 2`) when running in constrained or containerized environments to prevent out-of-memory compiler panics.

### C. Zero-Mess Cleanliness Standard
- Keep the local workspace completely clean:
  - Check `git status -s` frequently; zero untracked artifacts, temporary logs, or scratch files.
  - Ensure zero duplicate pull requests, stale branches, or orphaned discussions exist across your GitHub profile.
  - Every committed change must be cryptographically signed (`git commit -S`).

---

## 5. Maintainer Inbound PR Review, Approval & Release Protocol

When acting as an open source maintainer receiving pull requests from outside contributors, follow a disciplined protocol for triaging, testing, approving, merging, and releasing changes.

### A. The GitHub Contribution Graph & Review Event Mechanics
A frequent point of confusion for maintainers is why merging a community pull request does not increment the "Reviewed pull requests" counter or show review activity on their public GitHub profile.

1. **Commit and Merge Events vs Review Events**:
   - Merging a PR directly (via the GitHub web UI or running `gh pr merge`) emits a commit event or merge action. It does NOT emit a code review event.
   - GitHub only records review activity on your profile when a formal review is submitted against the pull request. This emits a `PullRequestReviewEvent` via the GitHub API.
2. **The Formal Review Invariant**:
   - Never merge an external PR without submitting a formal review. Submitting a formal review ensures three outcomes:
     - Public recognition of your code review and maintainer stewardship on GitHub.
     - Formal, structured feedback to the external contributor (Approved, Changes Requested, or Commented).
     - An immutable, auditable review record in repository history before changes land on `main`.

### B. The 5-Phase Maintainer Workflow

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                   MAINTAINER INBOUND PR WORKFLOW                            │
├───────────────────────────────┬─────────────────────────────────────────────┤
│ 1. TRIAGE & STATIC INSPECTION │ Inspect diff, verify CI status, check scope │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 2. LOCAL CHECKOUT & AUDIT     │ Pull PR branch locally, run full test suite │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 3. FORMAL APPROVAL SUBMISSION │ Emit PullRequestReviewEvent via gh pr review│
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 4. SQUASH & MERGE LANDING     │ Land patch cleanly with author attribution  │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 5. VERSION BUMP & RELEASE     │ Update changelog, bump version, sync distros│
└───────────────────────────────┴─────────────────────────────────────────────┘
```

#### Phase 1: Inbound Triage and Inspection
Before touching code or pulling branches, inspect the submission for quality and safety:
1. View PR summary and status:
   ```bash
   gh pr view <PR_NUMBER>
   ```
2. Inspect the raw diff:
   ```bash
   gh pr diff <PR_NUMBER>
   ```
3. Check continuous integration (CI) workflow status:
   ```bash
   gh pr checks <PR_NUMBER>
   ```
4. Verify safety and scope:
   - Ensure the diff contains only intended changes. Check for extraneous build artifacts, lockfile pollution, unintended configuration changes, or hidden Unicode characters.
   - For pull requests from first-time contributors running GitHub Actions workflows, inspect the code before approving workflow execution.

#### Phase 2: Local Checkout and Verification
Never rely exclusively on remote CI. Always verify external pull requests in your local environment:
1. Check out the pull request into a dedicated local branch:
   ```bash
   gh pr checkout <PR_NUMBER>
   ```
2. Run the project test suite and linter:
   - For Rust codebases:
     ```bash
     cargo test --all-targets
     cargo clippy -- -D warnings
     ```
   - For Node / TypeScript codebases:
     ```bash
     pnpm test
     pnpm lint
     pnpm build
     ```
   - For Shell / Python / System utilities:
     ```bash
     make test
     pytest
     shellcheck <modified_files>
     ```
3. Test targeted real-world functionality locally (for example: running binary flags, verifying edge cases on local hardware, or testing system-specific probes).

#### Phase 3: Formal Approval Review (Emitting Review Event)
Once local validation passes, return to the maintainer branch or terminal and submit a formal review:
1. Submit formal approval with a concise, factual summary of local testing:
   ```bash
   gh pr review <PR_NUMBER> --approve -b "LGTM: Verified locally on $(uname -s) $(uname -m). All unit and integration tests pass."
   ```
   *Note*: This command submits a formal review payload to the GitHub API, creating a `PullRequestReviewEvent` that credits your maintainer review activity on your public profile.
2. If changes or cleanups are needed before merging:
   ```bash
   gh pr review <PR_NUMBER> --request-changes -b "Specific feedback regarding missing test or regression."
   ```
3. If leaving non-blocking suggestions or general comments:
   ```bash
   gh pr review <PR_NUMBER> --comment -b "Informational comment or non-blocking suggestion."
   ```

#### Phase 4: Squash and Merge
Land the contribution onto the default branch:
1. Merge the PR using squash merge to maintain a clean git history:
   ```bash
   gh pr merge <PR_NUMBER> --squash --delete-branch
   ```
   *Note*: Squash merging automatically preserves the original contributor as the commit Author, while setting you (the maintainer) as the Committer. Both parties receive appropriate git attribution.
2. If multiple contributors collaborated on the PR, add co-authors in the commit body:
   ```
   Co-authored-by: Collaborator Name <collaborator@example.com>
   ```

#### Phase 5: Version Bump, Attribution & Multi-Platform Release
After landing the PR:
1. Pull the merged changes to your local `main` branch:
   ```bash
   git checkout main
   git pull origin main
   ```
2. Update the version and credit the contributor in documentation:
   - Document the bug fix or feature in `CHANGELOG.md` with explicit credit:
     ```markdown
     ## [0.18.1] - 2026-09-26
     ### Fixed
     - Corrected GPU model classification for Raphael desktop APUs (thanks to @contributor in #1).
     ```
   - Bump version manifests across the project (e.g. `Cargo.toml`, `package.json`, `setup.py`).
3. Synchronize distribution packaging manifests (if applicable):
   - RPM spec file (`kkfetch.spec`)
   - Debian changelog (`debian/changelog`)
   - Arch Linux PKGBUILD (`PKGBUILD`)
   - Homebrew formula (`Formula/<package>.rb`)
   - Windows WinGet / Chocolatey manifests
4. Commit changes with cryptographic SSH signature:
   ```bash
   git add -A
   git commit -S -m "chore(release): bump version to 0.18.1"
   git tag -s v0.18.1 -m "Release v0.18.1"
   git push origin main --tags
   ```
5. Dispatch multi-platform builds and repositories:
   - Verify GitHub Actions release workflow execution: `gh run list`
   - Trigger or verify Copr / PPA builds.
   - Update Homebrew tap with release tarball checksums.

### C. Maintainer GitHub CLI (`gh`) Command Reference

| Action | Command | Purpose |
| :--- | :--- | :--- |
| **Inspect PR status** | `gh pr view <PR>` | Inspect title, body, author, labels, and state |
| **Inspect diff** | `gh pr diff <PR>` | Review exact lines added, modified, or removed |
| **Check CI runs** | `gh pr checks <PR>` | Check passing or failing remote CI checks |
| **Checkout PR locally** | `gh pr checkout <PR>` | Switch to contributor branch locally for testing |
| **Submit formal approval** | `gh pr review <PR> --approve -b "LGTM"` | Emits `PullRequestReviewEvent` on maintainer profile |
| **Request changes** | `gh pr review <PR> --request-changes -b "..."` | Formal change request blocking merge |
| **Leave formal comment** | `gh pr review <PR> --comment -b "..."` | Emits review comment without approving or blocking |
| **Squash and merge** | `gh pr merge <PR> --squash --delete-branch` | Lands PR cleanly onto main and removes remote branch |
| **Rebase and merge** | `gh pr merge <PR> --rebase --delete-branch` | Applies contributor commits directly on top of main |
| **Close without merging** | `gh pr close <PR> -c "Reason for closing"` | Closes PR politely with maintainer explanation |
