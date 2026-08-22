# Productivity, Handoffs & Technical Communication

## 1. Handoff Protocol (`handoff`, `claude-handoff`)
When compacting context or handing off to another agent session:
1. **Goal Summary**: Core objective and current state.
2. **Decisions Made**: Key architectural choices settled during the session.
3. **Active Work & Files Changed**: Exact list of touched files and uncommitted diffs.
4. **Immediate Next Step**: The single exact command or ticket to resume.

## 2. Cognitive Reset (`wait-what`)
Triggered immediately when communication or understanding goes off track:
- Halt current execution.
- Reset cognitive state.
- Re-pitch the concept in plain, unambiguous terms using `CONTEXT.md` vocabulary.

## 3. The Humanizer Writing & Communication System
A checklist-driven standard that eliminates stylistic patterns that make text read as machine-generated:

### A. Sentence-Level Tics & Syntax
- **No Em-Dash Overuse**: Do not use em dashes for punchy emphasis. Use commas, colons, periods, parentheses, or conjunctions instead.
- **No Negative Parallelism / Contrast-Reframe Crutches**: Strip *"It's not X, it's Y"*, *"not just X, but Y"*, *"no X, no Y, just Z"*. State the point directly.
- **No Forced Rule of Three**: Do not force lists, adjectives, or examples into groups of exactly three. Use however many items actually belong.
- **No Dangling Participle Tack-Ons**: Remove sentences ending with dangling "-ing" clauses manufacturing significance (*"...highlighting its role in," "...underscoring the importance of," "...ensuring seamless operation"*).
- **Avoidance of Plain "Is/Are"**: Do not swap simple verbs for elaborate constructions to sound sophisticated. Let simple sentences be simple.

### B. Padding, Cliches & Fake Depth
- **No AI Filler or Openers**: Strip *"It's important to note"*, *"In today's fast-paced world"*, *"Let's dive in"*, *"Delighted to help"*, *"Crucial aspect"*, *"As we can see"*. State the technical fact directly.
- **No Vague Attribution**: Avoid *"some critics argue," "experts say," "studies show"* without a named source. Name the source or state the technical claim directly.
- **Direct Developer Cadence**: Speak naturally, concisely, and factually. When pair-programming, jump straight to the technical solution, diff, or root cause without conversational disclaimers.

### C. Ban on Meta-Humanness / Origin Telltales
- **Zero Meta-References to Humanness**: Real developers never describe their own commits, pull requests, comments, or documentation with meta-phrases like *"human like"*, *"written by human"*, *"humanized"*, or *"AI-free"*.
- **Natural Technical Phrasing**: Commit messages and PR titles must describe the concrete technical change directly (e.g. `docs: improve comments for X`, `refactor: simplify Y`, `fix: handle edge case in Z`).
- **Code Comments Focus Strictly on Technical "Why"**: Comments explain system constraints, kernel/hardware invariants, architectural decisions, and algorithm trade-offs.

## 4. Technical Writing Systems (`writing-beats`, `writing-shape`, `writing-fragments`, `writing-for-agents`)
- **Beats**: Rhythm and pacing of technical arguments (Problem → Tension → Principle → Solution → Code → Implication).
- **Shape**: Macro-structure of technical documents (Introduction → Core Invariants → Reference API → Migration Guide → Edge Cases).
- **Fragments**: Standalone, modular code snippets and examples that can be tested independently.
