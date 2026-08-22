---
name: engineer
description: >-
  Universal Engineering Craftsmanship, Deep Module Architecture, TDD Discipline,
  Disciplined Bug Diagnosis, Frontier Grilling, Spec & Tracer-Bullet Slicing,
  Two-Axis Code Review, and Human Technical Communication. Incorporates the full
  35-skill engineering and productivity suite for any software development workflow.
---

# Universal Engineering Skill

A comprehensive, universal software engineering standard and workflow system designed for real engineering, not vibe coding. Built on decades of software design wisdom (Ousterhout, Beck, Pragmatic Programmer, Evans) and rigorous AI pair-programming disciplines.

---

## The Engineering Workflow Lifecycle

Every change follows a disciplined, traceable progression from idea to production:

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                              THE MASTER ENGINEERING PIPELINE                            │
└─────────────────────────────────────────────────────────────────────────────────────────┘
                                           │
  1. Discovery & Alignment                 ▼
     [Idea / Feature] ────────► [grill-with-docs] ────────► (Unknowns?) ──► [prototype]
                                           │                                     │
                                           ├─────────────────────────────────────┘
  2. Specification & Slicing               ▼
                                      [to-spec]
                                           │
                                           ▼
                                     [to-tickets] (Vertical Tracer Bullets + Blocking DAG)
                                           │
  3. Execution & TDD                       ▼
                                      [implement] ◄───────► [tdd] (Red-Green-Refactor)
                                           │                      │
                                           ▼                      ▼
                                 [diagnosing-bugs] (6-Phase Diagnostic Loop)
                                           │
  4. Review & Architecture                 ▼
                                    [code-review] (Standards Axis + Spec Axis)
                                           │
                                           ▼
                            [improve-codebase-architecture] (Deep Modules)
                                           │
  5. Merge & Ship                          ▼
                              [resolving-merge-conflicts] ────► [Ship]
```

---

## Quick Reference & Skill Router

When approaching any task, route to the appropriate discipline:

| Trigger / User Intent | Target Discipline | Core Command / Flow | Reference |
| :--- | :--- | :--- | :--- |
| "Help me plan a feature / I want to build X" | Discovery & Grilling | `grill-with-docs` / `grilling` | [`02_grilling_and_discovery.md`](./references/02_grilling_and_discovery.md) |
| "I'm not sure which workflow to use" | Workflow Router | `ask-matt` | [`01_lifecycle_and_routing.md`](./references/01_lifecycle_and_routing.md) |
| "Let's turn this conversation into a spec" | Formal Specification | `to-spec` | [`05_spec_and_ticket_slicing.md`](./references/05_spec_and_ticket_slicing.md) |
| "Break this spec/plan into tickets" | Tracer-Bullet Slicing | `to-tickets` | [`05_spec_and_ticket_slicing.md`](./references/05_spec_and_ticket_slicing.md) |
| "Implement ticket #N / Build this feature" | Implementation Loop | `implement` + `tdd` | [`06_tdd_and_implementation.md`](./references/06_tdd_and_implementation.md) |
| "There is a bug / Test is failing / Heisenbug" | 6-Phase Bug Diagnosis | `diagnosing-bugs` | [`08_bug_diagnostics_protocol.md`](./references/08_bug_diagnostics_protocol.md) |
| "Review this PR / Review git diff" | Two-Axis Code Review | `code-review` | [`07_two_axis_code_review.md`](./references/07_two_axis_code_review.md) |
| "Analyze architecture / Clean up ball of mud" | Deep Module Survey | `improve-codebase-architecture` | [`04_deep_module_architecture.md`](./references/04_deep_module_architecture.md) |
| "Git merge conflict / Rebase conflict" | Primary Source Resolution | `resolving-merge-conflicts` | [`11_merge_conflicts_and_git_guardrails.md`](./references/11_merge_conflicts_and_git_guardrails.md) |
| "Huge foggy project / Multi-session roadmap" | Decision Mapping | `wayfinder` | [`10_wayfinder_and_triage.md`](./references/10_wayfinder_and_triage.md) |
| "Triage incoming issue / Bug intake" | Triage State Machine | `triage` | [`10_wayfinder_and_triage.md`](./references/10_wayfinder_and_triage.md) |
| "Need throwaway spike / Validate UI or reducer" | Spike & Prototype | `prototype` | [`02_grilling_and_discovery.md`](./references/02_grilling_and_discovery.md) |
| "Handoff to next agent / Compact context" | Context Serialization | `handoff` | [`12_productivity_and_communication.md`](./references/12_productivity_and_communication.md) |
| "Explain / Re-pitch confusing concept" | Cognitive Reset | `wait-what` | [`12_productivity_and_communication.md`](./references/12_productivity_and_communication.md) |
| "Interactive manual steps (OAuth, CI, AWS)" | Bash Wizard Generator | `wizard` | [`13_interactive_wizards_and_scripts.md`](./references/13_interactive_wizards_and_scripts.md) |
| "Package release (PPA, Copr, AUR, Brew, WinGet)" | Multi-Platform Packaging | `packaging` / `release` | [`14_packaging_and_distribution_pipelines.md`](./references/14_packaging_and_distribution_pipelines.md) |

---

## Core Pillars of Engineering Excellence

### 1. Grilling & Alignment (`grill-with-docs`)
- Never start implementing on vague specifications. Conduct numbered interview rounds.
- Map the decision tree. Ask the entire **frontier** (decisions whose prerequisites are resolved) in one round.
- Always provide your **recommended answers** with clear rationale.
- Finding facts is the agent's job; making decisions belongs to the human.
- Continuously sharpen the ubiquitous domain glossary (`CONTEXT.md`) and log trade-offs in ADRs (`docs/adr/`).

### 2. Deep Module Architecture (`codebase-design`)
- **Deep Modules**: Large amount of functionality accessible through a small, simple interface at a clean seam. High leverage for callers, strong locality for maintainers.
- **Shallow Modules (Banned)**: Thin wrappers where interface complexity matches implementation complexity.
- **The Deletion Test**: If deleting a module makes complexity vanish, it was a pass-through. If complexity reappears across N callers, it was earning its keep.
- **Seams & Adapters**: A seam is a public boundary where behavior can be varied. One adapter = hypothetical seam; two adapters = real seam.
- **The Interface is the Test Surface**: Tests live at public seams, never inspecting private internals or mock implementation details.

### 3. Vertical Tracer-Bullet Slicing (`to-tickets`)
- Break specifications into thin, end-to-end vertical slices that touch all layers (schema, domain logic, API/CLI, UI, tests).
- Every ticket must be independently verifiable and sized to fit a single clean context window (~100k tokens).
- Maintain an explicit dependency DAG (`Blocked by: #ticket`).
- For wide refactors across many call sites, enforce the **Expand–Contract pattern**:
  1. *Expand*: Introduce new interface alongside old.
  2. *Migrate*: Migrate callers in small, testable batches.
  3. *Contract*: Remove deprecated interface once all callers are migrated.

### 4. Test-Driven Development Discipline (`tdd`)
- **Strict Red-Green-Refactor**: Write a failing test first at a public seam, then write the minimal code to pass it, then refactor.
- **Banned Test Anti-Patterns**:
  - *Implementation Coupling*: Mocking internal collaborators or verifying private state.
  - *Tautological Assertions*: Assertions that duplicate production calculation logic.
  - *Horizontal Slicing*: Writing all tests upfront before building vertical slices.

### 5. Disciplined Bug Diagnostics (`diagnosing-bugs`)
- **Phase 1 (Tight Feedback Loop)**: Refuse to hypothesize until you have **one fast, deterministic, agent-runnable command** (test, curl, CLI snapshot) that goes **red on this exact symptom**.
- **Phase 2 (Minimization)**: Strip away extraneous code, parameters, and environment state until only the load-bearing reproduction remains.
- **Phase 3 (Falsifiable Hypotheses)**: Formulate 3–5 hypotheses in the form: *"If X is the cause, changing Y will make symptom Z disappear."*
- **Phase 4 (Targeted Instrumentation)**: Add tagged logs with unique markers (`[DEBUG-3a7b]`) at architectural boundaries.
- **Phase 5 & 6 (Fix, Regression Test & Clean)**: Write a regression test at the true seam, implement the fix, verify green on the Phase 1 loop, and purge all `[DEBUG-...]` markers.

### 6. Two-Axis Code Review (`code-review`)
- Review changes since a fixed git point across two isolated, independent axes:
  1. **Standards Axis**: Code cleanliness, repo conventions, and Fowler Code Smells (Feature Envy, Primitive Obsession, Data Clumps, Shotgun Surgery, Divergent Change, Speculative Generality).
  2. **Spec Axis**: Verification that every user story and acceptance criteria is satisfied with zero unintentional scope creep.

---

## Detailed Reference Catalog

Explore the deep operational references in the [`references/`](./references/) folder:
- [`01_lifecycle_and_routing.md`](./references/01_lifecycle_and_routing.md) - Lifecycle overview, router, and setup instructions.
- [`02_grilling_and_discovery.md`](./references/02_grilling_and_discovery.md) - Grilling methodologies, frontier discovery, and prototyping spikes.
- [`03_domain_modeling_and_adrs.md`](./references/03_domain_modeling_and_adrs.md) - Ubiquitous language, CONTEXT.md maintenance, and 3-gate ADR rules.
- [`04_deep_module_architecture.md`](./references/04_deep_module_architecture.md) - Deep vs shallow modules, seams, adapters, and TypeScript deep modules.
- [`05_spec_and_ticket_slicing.md`](./references/05_spec_and_ticket_slicing.md) - Writing specs, tracer-bullet tickets, DAG dependencies, expand-contract.
- [`06_tdd_and_implementation.md`](./references/06_tdd_and_implementation.md) - Red-green-refactor, seam testing, implementation execution.
- [`07_two_axis_code_review.md`](./references/07_two_axis_code_review.md) - Standards & Spec code review rubrics, Fowler smells catalog.
- [`08_bug_diagnostics_protocol.md`](./references/08_bug_diagnostics_protocol.md) - 6-Phase systematic bug diagnosis and Heisenbug resolution.
- [`09_architecture_survey_and_refactoring.md`](./references/09_architecture_survey_and_refactoring.md) - Scanning hotspots, deletion test, visual HTML reports.
- [`10_wayfinder_and_triage.md`](./references/10_wayfinder_and_triage.md) - Wayfinding through foggy initiatives and issue triage state machines.
- [`11_merge_conflicts_and_git_guardrails.md`](./references/11_merge_conflicts_and_git_guardrails.md) - Hunk-by-hunk conflict resolution and git safety guardrails.
- [`12_productivity_and_communication.md`](./references/12_productivity_and_communication.md) - Handoffs, questionnaires, wait-what, teaching, writing beats/shapes.
- [`13_interactive_wizards_and_scripts.md`](./references/13_interactive_wizards_and_scripts.md) - Interactive bash wizards, secret entry, toolchain automation.
- [`14_packaging_and_distribution_pipelines.md`](./references/14_packaging_and_distribution_pipelines.md) - Multi-distro release pipelines (PPA, Copr, AUR, Homebrew, WinGet), disaster recovery key management, and quality gates.
