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
├── Git & Upstream operations?
│   ├── Stuck on a merge/rebase conflict? ───────────► /resolving-merge-conflicts
│   ├── Open source RFC or maintainer collaboration? ► /upstream-rfc
│   └── Want to protect repo from bad git commands? ─► /git-guardrails-claude-code
└── Unsure where to start? ──────────────────────────► /ask-matt
```

---

## Initial Setup Discipline (`setup-matt-pocock-skills`)

Run setup once per repository to configure:
1. **Issue Tracker**: GitHub Issues (`gh`), Linear (`linear`), or local markdown files (`.tickets/` or `TODO.md`).
2. **Triage Labels**: Define the triage labels used in the repo (e.g. `triage:unreviewed`, `triage:ready`, `triage:blocked`).
3. **Docs Directory**: Set the canonical documentation path (e.g. `docs/`, `docs/adr/`, `CONTEXT.md`, `security/`, `schemas/`).
