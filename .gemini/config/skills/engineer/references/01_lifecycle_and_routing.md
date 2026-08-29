# Engineering Lifecycle & Skill Routing

## The Engineering Lifecycle
1. **Discovery & Alignment**: `grill-with-docs`, `grill-me`, `prototype`
2. **Architecture & Domain**: `domain-modeling`, `codebase-design`, `setup-ts-deep-modules`
3. **Specification & Slicing**: `to-spec`, `to-tickets`, `wayfinder`
4. **Implementation & Testing**: `implement`, `tdd`, `diagnosing-bugs`
5. **Defensive Security & Audit**: `security-audit`, `vibe-check`, `security-check`
6. **Quality Gate & Review**: `code-review`, `improve-codebase-architecture`
7. **Integration & Release**: `packaging`, `release`, `resolving-merge-conflicts`, `wizard`, `git-guardrails-claude-code`

---

## Ask-Matt Routing Decision Tree

```
Are you looking at...
├── A new feature or idea?
│   ├── Do you need to clarify requirements? ────────► /grill-with-docs (or /grill-me)
│   ├── Is there an unknown design/feel question? ───► /prototype
│   ├── Ready to document technical design? ─────────► /to-spec
│   └── Ready to slice into tasks? ──────────────────► /to-tickets
├── An existing bug or regression?
│   ├── Need to diagnose and reproduce? ─────────────► /diagnosing-bugs
│   └── Bug triaging from incoming issue? ───────────► /triage
├── Building code right now?
│   ├── Working on a ticket/spec? ───────────────────► /implement
│   └── Writing tests / red-green loop? ─────────────► /tdd
├── Security, Audits & Defensive Checks?
│   ├── Full 17-category security audit? ────────────► /security-audit (or /vibe-check)
│   ├── Fast pre-commit security verification? ──────► /security-check
│   └── Manual penetration testing checklist? ───────► /manual-security-check
├── Reviewing or refactoring?
│   ├── Reviewing diff before commit/PR? ────────────► /code-review
│   └── Looking for architecture improvements? ──────► /improve-codebase-architecture
├── Git operations?
│   ├── Stuck on a merge/rebase conflict? ───────────► /resolving-merge-conflicts
│   └── Want to protect repo from bad git commands? ─► /git-guardrails-claude-code
└── Unsure where to start? ──────────────────────────► /ask-matt
```

---

## Initial Setup Discipline (`setup-matt-pocock-skills`)

Run setup once per repository to configure:
1. **Issue Tracker**: GitHub Issues (`gh`), Linear (`linear`), or local markdown files (`.tickets/` or `TODO.md`).
2. **Triage Labels**: Define the triage labels used in the repo (e.g. `triage:unreviewed`, `triage:ready`, `triage:blocked`).
3. **Docs Directory**: Set the canonical documentation path (e.g. `docs/`, `docs/adr/`, `CONTEXT.md`, `security/`).
