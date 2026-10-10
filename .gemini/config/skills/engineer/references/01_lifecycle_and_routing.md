# Engineering Lifecycle & Skill Routing

## The Engineering Lifecycle
1. **Discovery & Alignment**: `grill-with-docs`, `grill-me`, `council`, `prototype`
2. **Architecture & Contracts**: `domain-modeling`, `codebase-design`, `contract-first`, `setup-ts-deep-modules`
3. **Specification & Slicing**: `to-spec`, `to-tickets`, `spec-mine`, `wayfinder`
4. **Implementation & Testing**: `implement`, `tdd`, `de-sloppify`, `db-migration`, `diagnosing-bugs`
5. **Defensive Security & Audit**: `security-audit`, `vibe-check`, `security-check`, `silent-failure`
6. **Quality Gate, Review & Budget**: `code-review`, `santa-review`, `context-budget`, `improve-codebase-architecture`
7. **Integration, Upstream & Release**: `packaging`, `release`, `resolving-merge-conflicts`, `upstream-rfc`, `canvas-viewport`, `wizard`, `git-guardrails-claude-code`

---

## Ask-Matt Routing Decision Tree

```
Are you looking at...
├── A new feature, trade-off, or idea?
│   ├── Do you need to clarify requirements? ────────► /grill-with-docs (or /grill-me)
│   ├── High-stakes architectural trade-off? ────────► /council (Architect, Skeptic, Pragmatist, Critic)
│   ├── Is there an unknown design/feel question? ───► /prototype
│   ├── Designing an API or event schema? ───────────► /contract-first
│   ├── Onboarding a brownfield legacy repo? ────────► /spec-mine
│   ├── Ready to document technical design? ─────────► /to-spec
│   └── Ready to slice into tasks? ──────────────────► /to-tickets
├── An existing bug or regression?
│   ├── Need to diagnose and reproduce? ─────────────► /diagnosing-bugs
│   └── Bug triaging from incoming issue? ───────────► /triage
├── Building code right now?
│   ├── Working on a ticket/spec? ───────────────────► /implement
│   ├── Writing tests / red-green loop? ─────────────► /tdd
│   ├── Purging test slop & compiler assertions? ────► /de-sloppify
│   ├── Changing database schema / zero downtime? ──► /db-migration
│   └── High-performance canvas / document viewer? ─► /canvas-viewport
├── Security, Audits & Defensive Checks?
│   ├── Full 17-category security audit? ────────────► /security-audit (or /vibe-check)
│   ├── Fast pre-commit security verification? ──────► /security-check
│   ├── Hunting empty catches & fake fallbacks? ────► /silent-failure
│   └── Manual penetration testing checklist? ───────► /manual-security-check
├── Reviewing, budgeting or refactoring?
│   ├── Standard two-axis review? ───────────────────► /code-review
│   ├── High-risk release dual independent review? ──► /santa-review
│   ├── Token overhead or MCP tool audit? ───────────► /context-budget
│   └── Looking for architecture improvements? ──────► /improve-codebase-architecture
├── Git & CI/CD operations?
│   ├── Stuck on a merge/rebase conflict? ───────────► /resolving-merge-conflicts
│   ├── Open source RFC or maintainer collaboration? ► /upstream-rfc
│   ├── Protect repo from bad git commands? ─────────► /git-guardrails-claude-code
│   └── Pre-push CI simulation & GitHub Actions? ────► /ci-check (or /gh-verify)
└── Unsure where to start? ──────────────────────────► /ask-matt
```

---

## Initial Setup Discipline (`setup-matt-pocock-skills`)

Run setup once per repository to configure:
1. **Issue Tracker**: GitHub Issues (`gh`), Linear (`linear`), or local markdown files (`.tickets/` or `TODO.md`).
2. **Triage Labels**: Define the triage labels used in the repo (e.g. `triage:unreviewed`, `triage:ready`, `triage:blocked`).
3. **Docs Directory**: Set the canonical documentation path (e.g. `docs/`, `docs/adr/`, `CONTEXT.md`, `security/`, `schemas/`).

---

## Host Runtime & Tool Interoperability Standard

When skills, subagents, or automated workflows operate across diverse host environments (such as Claude Code, Codex, OpenAI Swarm, and Google Antigravity), tool call vocabularies must map deterministically without tool hallucinations:

| Canonical Host Tool Concept | Claude / Codex Vocabulary | Google Antigravity Primitive (`agy`) | Operation Invariant |
| :--- | :--- | :--- | :--- |
| **Command Execution** | `Bash` / `Terminal` | `run_command` | Execute shell commands synchronously or track long-running jobs via background task management. |
| **File Read** | `FileRead` / `Read` | `view_file` | Read files with line-indexed slicing (`StartLine`, `EndLine`). Check truncation indicators. |
| **File Creation** | `FileWrite` / `Write` | `write_to_file` | Atomically write new files. Set `Overwrite: true` explicitly when replacing complete files. |
| **Surgical Code Edit** | `FileEdit` / `Edit` | `replace_file_content` | Make exact substring replacements at unique line ranges. No speculative changes. |
| **Subagent Delegation** | `Agent` / `Subagent` | `invoke_subagent` | Launch isolated subagent conversations (`flash`, `pro`, or `inherit`). |
| **User Clarification** | `AskUserQuestion` | `ask_question` | Present structured multiple-choice questions with explicit selectable options. |
| **Web Content Fetch** | `WebFetch` / `Curl` | `read_url_content` | Fetch static markdown and HTML documentation via HTTP. |
| **Web Search** | `WebSearch` / `Google` | `search_web` | Perform search queries across documentation domains. |
