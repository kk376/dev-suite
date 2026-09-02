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

### B. Language and Voice
- Strip robotic compound hyphens where natural human writing uses separate words (write "on demand" instead of "on-demand", "fit to view" instead of "fit-to-view", "hot reloading" instead of "hot-reloading").
- Avoid em dashes. Use simple punctuation: commas, colons, or parentheses.
- Avoid robotic corporate filler ("It is worth noting", "Delighted to share", "Seamless integration"). Speak directly as one software engineer to another.

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
