# Universal Skill Packaging, Manifest Governance & Agent Security Guards

A production engineering standard for cross-platform agent skill packaging (Antigravity, Claude Code, Cursor, Cowork, Gemini CLI), strict frontmatter schema validation, atomic zero-downtime installation, live symlink development, and automated CI permission allowlist governance.

---

## 1. The Cross-Platform Agent Tooling Architecture

Agent skills should never be locked into a single proprietary harness. A well-engineered skill is a portable specification combining human-readable operational guidelines with machine-parseable frontmatter and modular scripts.

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                      UNIVERSAL SKILL PACKAGING & GOVERNANCE PIPELINE                    │
└─────────────────────────────────────────────────────────────────────────────────────────┘
                                           │
  1. Skill Specification                   ▼
     [SKILL.md + Scripts + References] ──► [Spec Validation Engine]
                                           │
  2. Frontmatter Schema Verification       ▼
     [Name Regex Check (a-z0-9-)] ───────► [Allowed Tools Allowlist]
     [Length Bounds (Name <= 64)]         [Description Bounds (<= 1024)]
     [No XML Injections / Reserved Words]  [Strict Spec-Only Keys]
                                           │
  3. Installation Pipeline                 ▼
     [--link (Dev Mode)]: Direct Symlink for Live Iteration
     [--target (Release)]: Atomic Staging ──► [Backup Current] ──► [Atomic Swap]
                                           │
  4. CI Manifest & Permission Guards       ▼
     [Settings Manifest Audit] ──────────► [Ban Wildcard Permissions `Bash(*)`]
     [.gitignore State Leak Audit]         [Ban Lifecycle Scripts (`preinstall`)]
```

---

## 2. Strict Skill Packaging & Frontmatter Validation Spec

Every skill must be validated against a strict packaging schema before deployment or publishing:

### Frontmatter Schema Rules

```yaml
---
name: my-universal-skill         # Lowercase alphanumeric + hyphen, <= 64 chars, matches folder
description: A concise description of the skill and triggers.  # Non-empty, <= 1024 chars
license: MIT                     # Standard SPDX license identifier
compatibility: ">=1.0"           # Compatibility requirements
allowed-tools:                   # Explicit tool dependencies (never wildcard)
  - read_file
  - run_command
metadata:                        # Custom metadata dictionary
  author: Engineering Team
  version: 1.0.0
---
```

### The 6 Validation Invariants
1. **Folder-Name Parity**: The `name` declared in YAML frontmatter must strictly match the directory name (`^[a-z0-9]+(-[a-z0-9]+)*$`).
2. **Spec-Only Top-Level Keys**: Rejects unknown keys. Top-level frontmatter keys are restricted to: `name`, `description`, `license`, `compatibility`, `metadata`, `allowed-tools`.
3. **No Unsanitized XML/HTML Tags**: Rejects `<tag>` syntax in names and descriptions to prevent prompt injection into agent system context.
4. **Length Ceilings**:
   * `name`: $\le 64$ characters.
   * `description`: $\le 1024$ characters.
5. **Reserved Word Isolation**: Rejects proprietary namespace masquerading (e.g., claiming `anthropic`, `claude`, or `google` as top-level skill names).
6. **Package Size Ceiling**: Bundled zip packages (e.g. for cloud/cowork platforms) must not exceed $30\text{ MB}$.

---

## 3. Atomic Staged Installation & Safe Rollbacks

Never unpack, copy, or overwrite an active skill directly in place. If an installation is interrupted or corrupts midway, the agent harness is left in a broken state.

### The 4-Phase Atomic Installer Protocol
```
Phase 1: Validation
  Validate source directory against Frontmatter Schema Rules.
  If invalid -> Abort with clear error.

Phase 2: Staging
  Stage target files into a fresh temporary directory:
  tmp_dir = target_dir.parent / f".tmp_{skill_name}_{uuid4().hex[:8]}"
  Copy all clean files (excluding .git, __pycache__, .DS_Store).

Phase 3: Rollback Preparation
  If target_dir already exists:
  backup_dir = target_dir.parent / f"{skill_name}.backup-{timestamp}"
  rename(target_dir, backup_dir)

Phase 4: Atomic Cutover
  rename(tmp_dir, target_dir)
  On any exception: restore backup_dir -> target_dir immediately.
```

### Live Development Mode (`--link`)
For active development, the installer supports `--link`:
* Instead of copying files, it creates an absolute symlink from the development checkout directly into the harness skill directory (`~/.gemini/config/skills/<skill>` or `~/.claude/skills/<skill>`).
* Changes in code, markdown, or scripts take effect immediately in the next agent invocation without running a build or copy command.

---

## 4. Agent Manifest Governance & Security Guards (`security_guards.py`)

Agent configuration files (such as `.claude/settings.json`, `.cursor/`, or `.gemini/`) often define permissions and lifecycle hooks. An automated CI security test must guard these files against accidental privilege escalation.

### Invariant 1: Permission Allowlist Enforcement
* **The Vulnerability**: Developers or automated refactors accidentally commit wildcard approvals such as `"Bash(*)"` or `"Bash(curl:*)"`, allowing arbitrary unprompted remote code execution on any machine that clones the repo.
* **The Guard**: Maintain an explicit, hardcoded set of pre-approved commands in a CI test (`tools/security_guards.py`).
  ```python
  ALLOWED_PERMISSIONS = {
      "Bash(python -m pytest:*)",
      "Bash(cargo test:*)",
      "Bash(git status:*)",
  }
  ```
  Any PR that widens permissions must explicitly update the test's allowlist in the same commit, making privilege escalation loud and reviewable.

### Invariant 2: Personal Data & Runtime State Protection
* **The Vulnerability**: Committing runtime state databases, scrapers' `seen_jobs.json`, token caches, or local candidate profiles.
* **The Guard**: CI verifies that `.gitignore` contains mandatory, non-negotiable ignore rules, and actively verifies that no un-allowlisted negation (`!pattern`) can re-include sensitive paths.

### Invariant 3: Supply-Chain Manifest Auditing
* **The Vulnerability**: Smuggling arbitrary shell commands into npm/bun/pip dependency trees.
* **The Guard**: Scans all `package.json` manifests across tool submodules and verifies:
  1. Zero lifecycle execution scripts (`preinstall`, `install`, `postinstall`, `prepare`, `prepack`).
  2. Zero `trustedDependencies` declarations.
  All build tasks must be explicitly executed by the developer or CI runner, never implicitly by package managers during dependency resolution.

---

## 5. Automated Markdown Reference Integrity Gate

In comprehensive skill repositories containing dozens of interconnected references, dead documentation links easily creep in during refactoring or file renaming.

### The Reference Link Integrity Rule
Every backticked path ending in `.md` or markdown hyperlink across `SKILL.md`, `README.md`, and the `references/` tree must resolve to an existing physical file on disk:
1. Sibling references (e.g. `` `02_grilling_and_discovery.md` ``) must resolve relative to the citing document.
2. Nested references (e.g. `` `[tokens](./references/24_design_universal_token_and_tailwind_engine.md)` ``) must resolve relative to the parent directory.
3. Root-relative references must resolve relative to the repository root.

A deterministic CI script (`python3 scripts/check_markdown_references.py`) parses all markdown documents using regular expressions, tests filesystem resolution, and fails the build if any broken reference is detected.

---

## 6. Multi-Platform Marketplace & Agent Ecosystem Synchronization

Modern autonomous agent ecosystems enforce disparate packaging layouts:
- **Claude Code**: Consumes skills directly from the repository root (`SKILL.md`).
- **Codex Marketplace**: Mandates isolated plugins inside nested directory structures (e.g. `.codex-marketplace/<plugin-name>/`).
- **Antigravity / Gemini CLI**: Loads customizations from user-level directories (`~/.gemini/config/skills/<skill-name>/`) or project-local configurations.

### Single-Source-of-Truth Architecture
Never manually duplicate files across divergent platform directory layouts. Maintain the canonical skill at the root or main skill directory, and provide an automated export/synchronization script (`sync_codex_marketplace.py`):
1. Cleans the target destination directory atomically.
2. Copies canonical assets (`SKILL.md`, `references/`, `scripts/`, `lib/`, manifests).
3. Strips developer-only validation scripts (`check_markdown_references.py`) and cached bytecode (`__pycache__`, `*.pyc`).
4. Ensures identical behavioral execution across all IDEs and CLI agents without configuration drift.
