# Productivity, Handoffs & Technical Communication

## Handoff Protocol (`handoff`, `claude-handoff`)
When compacting context or handing off to another agent session:
1. **Goal Summary**: Core objective and current state.
2. **Decisions Made**: Key architectural choices settled during the session.
3. **Active Work & Files Changed**: Exact list of touched files and uncommitted diffs.
4. **Immediate Next Step**: The single exact command or ticket to resume.

## Cognitive Reset (`wait-what`)
Triggered immediately when communication or understanding goes off track:
- Halt current execution.
- Reset cognitive state.
- Re-pitch the concept in plain, unambiguous terms using `CONTEXT.md` vocabulary.

## Technical Writing Systems (`writing-beats`, `writing-shape`, `writing-fragments`, `writing-for-agents`)
- **Beats**: Rhythm and pacing of technical arguments (Problem $	o$ Tension $	o$ Principle $	o$ Solution $	o$ Code $	o$ Implication).
- **Shape**: Macro-structure of technical documents (Introduction $	o$ Core Invariants $	o$ Reference API $	o$ Migration Guide $	o$ Edge Cases).
- **Fragments**: Standalone, modular code snippets and examples that can be tested independently.
