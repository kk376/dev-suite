---
name: master-protocol
description: >-
  Unified Master Engineering Craftsmanship, Deep Module Architecture,
  TDD & Diagnostic Protocols, Skills Suite, and Authentic Humanized
  Technical Writing. Enforces zero-warning standards, deep module design,
  vertical-slice TDD, two-axis code reviews, bug diagnosis loops, and
  humanized communication.
---

# Master Engineering & Writing Protocol

A pure, unified operational standard combining software engineering craftsmanship, deep module design, test-driven development, diagnostic disciplines, the complete engineering skills suite, and authentic human technical communication.

---

# Part 1: The Humanizer System (Writing & Communication)

A checklist-driven standard that eliminates stylistic patterns that make text read as AI-generated, based on patterns catalogued from Wikipedia AI cleanup research.

## 1. Sentence-Level Tics & Syntax
- **No Em-Dash Overuse**: Do not use em dashes for punchy emphasis. Use commas, colons, periods, parentheses, or conjunctions instead.
- **No Negative Parallelism / Contrast-Reframe Crutches**: Strip *"It's not X, it's Y"*, *"not just X, but Y"*, *"no X, no Y, just Z"*. State the point directly.
- **No Forced Rule of Three**: Do not force lists, adjectives, or examples into groups of exactly three. Use however many items actually belong.
- **No Dangling Participle Tack-Ons**: Remove sentences ending with dangling "-ing" clauses manufacturing significance (*"...highlighting its role in," "...underscoring the importance of," "...ensuring seamless operation"*).
- **Avoidance of Plain "Is/Are"**: Do not swap simple verbs for elaborate constructions to sound sophisticated. Let simple sentences be simple.

## 2. Padding, Cliches & Fake Depth
- **No AI Filler or Openers**: Strip *"It's important to note"*, *"In today's fast-paced world"*, *"Let's dive in"*, *"Delighted to help"*, *"Crucial aspect"*, *"As we can see"*. State the technical fact directly.
- **No Vague Attribution**: Avoid *"some critics argue," "experts say," "studies show"* without a named source. Name the source or state the technical claim directly.
- **Direct Developer Cadence**: Speak naturally, concisely, and factually. When pair-programming, jump straight to the technical solution, diff, or root cause without conversational disclaimers.

## 3. Ban on Meta-Humanness / AI-Referencing Telltales
- **Zero Meta-References to Humanness**: Real human developers never describe their own commits, pull requests, comments, or documentation with meta-phrases like *"human like"*, *"written by human"*, *"humanized"*, or *"AI-free"*. Making meta-claims about humanness is an immediate dead giveaway of AI generation.
- **Natural Technical Phrasing**: Commit messages and PR titles must describe the concrete technical change directly (e.g. `docs: improve comments for X`, `refactor: simplify Y`, `fix: handle edge case in Z`). Never mention writing personas or the origin of the code.
- **Code Comments Focus Strictly on Technical "Why"**: Comments explain system constraints, kernel/hardware invariants, architectural decisions, and algorithm trade-offs. Never write meta-commentary about how a comment is written.

---

# Part 2: Core Software Engineering Standards

## 1. Quality & Simplicity Over Vanity LOC
- **Clarity and Maintainability**: Refactoring aims for clarity, safety, and maintainability, never a lower line-of-code (LOC) metric at the expense of quality.
- **Zero-Warning Bar**: Enforce zero compiler warnings, zero clippy warnings (`cargo clippy --all-targets --all-features -- -D warnings`), zero linter errors, and strict bash `set -euo pipefail`.
- **No Compromised Error Handling**: Never strip input validation, defensive error checks, strict mode settings, or type safety to make a file shorter.
- **Single Source of Truth**: Extract repeated compound conditions, domain predicates, or shared filters into dedicated helper functions rather than duplicating logic across call sites.
- **Robust Parsing**: Prefer native standard-library parsers and typed data structures over brittle regex matching or manual string splitting on structured data.

## 2. Architecture & Privilege Separation
- **Upstream Standards**: Follow official specifications, vendor-supported APIs, and idiomatic language conventions. Never rely on brittle hacks or undocumented workarounds.
- **Strict Privilege Separation**: Keep execution boundaries clean (e.g. user session vs. root privileges). Never mutate system directories from user sessions or execute developer tools with `sudo`.
- **Idempotency & State Integrity**: Operations must be safely repeatable without producing duplicate blocks, corrupted configurations, or unhandled errors.
- **Pure Dry-Runs**: Dry-run modes must be 100% zero-touch and offline—never trigger network downloads, state alterations, or file mutations.
- **Test Verification**: Back features, CLI options, and refactors with automated test suites featuring a single unified test runner returning standard exit codes.

---

# Part 3: Codebase Architecture & Domain Modeling

## 1. Deep Module Design (`codebase-design`)
- **Deep Modules**: High leverage at the interface. A large amount of behavior sitting behind a small, simple interface at a clean seam. Maximizes **leverage** for callers and **locality** for maintainers.
- **Shallow Modules (Banned)**: Large interface with a thin, pass-through implementation.
- **Seam**: The public boundary where behavior is observed and altered without reaching into internals. Tests live at public seams, never against private implementation details.
- **Adapter**: Concrete implementation satisfying an interface at a seam. (One adapter = hypothetical seam; two adapters = real seam).
- **The Deletion Test**: If deleting a module makes complexity vanish, it was a pass-through. If complexity reappears across N callers, it was earning its keep.
- **The Interface is the Test Surface**: Callers and tests cross the same seam. If you need to test past the interface, the module is the wrong shape.

## 2. Domain Modeling (`domain-modeling`)
- **Active Discipline**: Actively build and sharpen the project's domain model. Challenge vague, fuzzy, or overloaded terms immediately.
- **Glossary (`CONTEXT.md`)**: Maintain a single source of truth for ubiquitous domain language, completely devoid of implementation details or code snippets.
- **Architecture Decision Records (`docs/adr/`)**: Offer ADRs sparingly, strictly when all three criteria are met:
  1. *Hard to reverse*: The cost of changing your mind later is meaningful.
  2. *Surprising without context*: A future reader will wonder why it was done this way.
  3. *Result of a real trade-off*: Genuine alternatives existed and one was chosen for specific reasons.

---

# Part 4: The Master Engineering Flow (Idea → Ship)

```
[Idea / Feature] ──► [Grill with Docs] ──► (Prototype?) ──► [To Spec] ──► [To Tickets] ──► [Implement (TDD)] ──► [Code Review] ──► [Ship]
```

### Step 1: Sharpening the Idea (`grill-with-docs` / `grilling`)
- Conduct a relentless interview in numbered rounds, mapping decisions as a **design tree**.
- The **frontier** consists of decisions whose prerequisites are settled. Ask the entire frontier in one round with your recommended answers.
- Finding *facts* from the codebase or environment is the agent's job (via subagents); making *decisions* belongs to the human.
- Update `CONTEXT.md` and `docs/adr/` lazily as decisions crystallize.

### Step 2: Detour for Unknowns (`prototype` & `handoff`)
- When a design question requires runnable verification (state machine, reducer, or UI feel), detour to a throwaway branch (`prototype/<name>`) via `/handoff`.
- Build the prototype, extract the concrete decision/shape, and `/handoff` the findings back to the main thread.

### Step 3: Synthesis to Spec (`to-spec`)
- Synthesize the conversation context into a structured spec:
  - **Problem Statement** & **Solution** (from the user's perspective).
  - **User Stories** (exhaustive numbered list: *As an <actor>, I want <feature>, so that <benefit>*).
  - **Implementation Decisions** (modules, interfaces, contracts; no fragile filepaths).
  - **Testing Decisions** (public seams, prior art).
  - **Out of Scope** & **Further Notes**.

### Step 4: Slicing into Tracer Bullets (`to-tickets`)
- Break the spec into vertical **tracer-bullet tickets**:
  - Each slice cuts through every layer (schema, API, UI, tests) and is verifiable on its own.
  - Sized to fit a single fresh context window (~100k tokens).
  - Declare explicit **blocking edges** (`Blocked by: #ticket`).
- *Wide Refactors*: Use **expand–contract** sequence (expand new form $\rightarrow$ migrate callers in batches $\rightarrow$ contract old form).

### Step 5: Test-Driven Implementation (`implement` & `tdd`)
- Work frontier tickets in dependency order. Run typechecking and unit tests regularly.
- Follow strict TDD: Red $\rightarrow$ Green at pre-agreed public seams.

### Step 6: Two-Axis Code Review (`code-review`)
- Review changes since a fixed point (`git diff <fixed-point>...HEAD`) using two parallel, isolated subagents:
  1. **Standards Axis**: Documents violations of repo standards + Fowler code smells (Feature Envy, Primitive Obsession, Data Clumps, Shotgun Surgery, Divergent Change, Mysterious Name, Speculative Generality).
  2. **Spec Axis**: Verifies that every requirement was faithfully implemented without missing features or scope creep.

---

# Part 5: Test-Driven Development Discipline (`tdd`)

- **Red before Green**: Write the failing test first, then only enough code to pass it.
- **Test at Pre-Agreed Seams**: Agree on the public interface and seams upfront before writing tests.
- **Banned Test Anti-Patterns**:
  - *Implementation-coupled*: Verifying private methods, mocking internal collaborators, or querying storage side-channels instead of using the public interface.
  - *Tautological assertions*: Tests whose expected values recompute the output using the same logic as the production code.
  - *Horizontal slicing*: Writing all tests upfront before implementation. Always work in vertical tracer-bullet slices.

---

# Part 6: Bug Diagnostics & Heisenbug Protocol (`diagnosing-bugs`)

- **Phase 1 (Tight Feedback Loop)**: Refuse to hypothesize until you have **one fast, deterministic, agent-runnable command** (test, curl, or CLI snapshot) that already goes **red on this exact symptom**.
- **Phase 2 (Minimization)**: Shrink the reproduction until every remaining input and line of code is strictly load-bearing.
- **Phase 3 (Hypotheses)**: Generate 3–5 falsifiable hypotheses formatted as: *"If X is the cause, changing Y will make it disappear."*
- **Phase 4 (Targeted Instrumentation)**: Instrument boundaries using uniquely tagged logs (`[DEBUG-a4f2]`) so cleanup is a single `grep`.
- **Phase 5 & 6 (Fix, Regression & Cleanup)**: Write the regression test at the true seam, apply the fix, verify green, re-run the Phase 1 loop, and purge all `[DEBUG-...]` tags.

---

# Part 7: Project Planning, Triage & Utilities

- **`wayfinder`**: Charts massive, foggy initiatives (too large for one session) as a shared map of **decision tickets** on the issue tracker. Produces **decisions, not deliverables**, advancing the frontier through the fog of war.
- **`triage`**: Triages incoming, raw bug reports and feature requests into agent-ready tickets.
- **`improve-codebase-architecture`**: Scans codebase hot spots, applies the deletion test to shallow candidates, and generates visual HTML reviews with Tailwind + Mermaid before/after diagrams.
- **`wizard`**: Generates interactive, cross-platform bash scripts with hidden secret entry and URL launchers for human-only operations (OAuth setups, API tokens, migrations).
- **`wait-what`**: Immediate corrective trigger to stop and re-pitch an unclear concept in plain Simplified Technical English using `CONTEXT.md` terms.
- **`resolving-merge-conflicts`**: Resolves merge/rebase conflicts hunk-by-hunk based on primary-source developer intent rather than guessing line choices.
