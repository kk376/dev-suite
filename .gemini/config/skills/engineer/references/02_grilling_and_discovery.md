# Grilling, Discovery & Prototyping

## Grilling Protocol (`grilling`, `grill-me`, `grill-with-docs`)

### The 4 Core Laws of Grilling
1. **Numbered Rounds**: Conduct the interview in explicit numbered rounds (`### Round 1`, `### Round 2`).
2. **Ask the Entire Frontier**: The frontier is the set of decisions whose prerequisites are settled. Never ask one question at a time if multiple questions are ready. Ask the complete frontier together.
3. **Always Recommend Answers**: Never ask open-ended questions without your own technical recommendation and rationale. Format:
   - **Question N**: [Description]
   - **Options**: [Option A, Option B, Option C]
   - **Recommendation**: [Option A] because [Technical Rationale].
4. **Division of Labor**:
   - Finding *facts* from the codebase or environment is the agent's job (use subagents / file reads).
   - Making *decisions* belongs to the human developer.

---

## Prototyping Discipline (`prototype`)

### When to Prototype
- An unknown algorithmic behavior or complex state machine.
- A UI interaction or layout feel that cannot be validated in text.
- A library integration or third-party API spike.

### Prototyping Workflow
1. **Create Spike Branch**: Check out a temporary branch `prototype/<feature-name>`.
2. **Single-File Artifact / Route**: Build a self-contained HTML/JS file or a isolated preview route.
3. **Verify the Specific Unknown**: Focus strictly on answering the design question, ignoring edge-case polish, persistence, or production error handling.
4. **Handoff Back to Main**:
   - Document the concrete shape or decision discovered.
   - Switch back to the main working branch.
   - Throw away or reference the prototype branch in the upcoming spec.

---

## The 4-Voice Decision Council (`council`)

When facing ambiguous architectural decisions or high-stakes trade-offs with no obvious winner (e.g. monorepo vs polyrepo, custom engine vs third-party framework, SQL vs document store, SSR vs SPA), convene the 4-Voice Decision Council to prevent cognitive anchoring.

```
                    ┌───────────────────────────────┐
                    │      THE 4-VOICE COUNCIL      │
                    └───────────────┬───────────────┘
                                    │
         ┌──────────────────┬───────┴──────────┬──────────────────┐
         ▼                  ▼                  ▼                  ▼
  ┌──────────────┐   ┌──────────────┐   ┌──────────────┐   ┌──────────────┐
  │  ARCHITECT   │   │   SKEPTIC    │   │  PRAGMATIST  │   │    CRITIC    │
  │ Correctness, │   │ Challenge    │   │ Speed, real  │   │ Downside,    │
  │ modularity & │   │ premises &   │   │ user impact  │   │ failure modes│
  │ longevity    │   │ simplify     │   │ & delivery   │   │ & worst-case │
  └──────────────┘   └──────────────┘   └──────────────┘   └──────────────┘
```

### The 4 Voices & Their Lenses

| Voice | Analytical Lens | Key Question Asked |
| :--- | :--- | :--- |
| **Architect** | Structural integrity, domain purity, clean seams, 2-year maintenance burden. | *"What maintains conceptual integrity and boundary isolation as this system grows?"* |
| **Skeptic** | Premise challenge, assumption breaking, radical simplification. | *"Do we need to build this at all? Can we delete this requirement or use what we already have?"* |
| **Pragmatist** | Operational reality, immediate shipping velocity, developer friction. | *"What gets working software in front of users by tomorrow with minimal moving parts?"* |
| **Critic** | Worst-case failure modes, operational burden, security blast radius. | *"How will this break at 3 AM on a holiday, and why will we regret this in six months?"* |

### Anti-Anchoring Protocol
1. **Context Isolation**: Subagents representing external voices receive only the explicit decision question and necessary constraints. Never feed full biased conversation history.
2. **Standard Output Structure**:
   - **Position**: 1 to 2 declarative sentences.
   - **Reasoning**: Exactly 3 concise, load-bearing bullet points.
   - **Main Risk**: The biggest compromise or vulnerability of their chosen path.
   - **Surprise**: One non-obvious factor or blind spot the other voices might overlook.
3. **Synthesis & Verdict**:
   - Explicitly highlight the **Strongest Dissent** (never smooth over legitimate disagreement).
   - Document whether the Skeptic's **Premise Check** challenged the fundamental question.
   - Produce a definitive synthesized recommendation with concrete trade-off rationale.

---

## Proactive Confusion Management & Anti-Silent Assumptions

When requirements have multiple plausible interpretations, AI models frequently make silent assumptions and generate hundreds of lines along the wrong path. Enforce proactive confusion management:

1. **Never Pick Silently**: When a request is open to interpretation (e.g. "make search faster", "add export", "optimize queries"), stop and surface the concrete options before writing code:
   - **Throughput vs Latency vs Perceived UX Speed**: Clarify which performance dimension is actually constrained.
   - **Scope & Privacy**: Clarify boundaries (e.g. exporting all records vs paginated user-scoped records).
2. **Surface Hidden Assumptions Explicitly**: State critical assumptions upfront as numbered bullet points. If an assumption shapes the database schema, network boundary, or public API contract, require explicit human confirmation.
3. **Push Back on Premature Complexity**: If the human asks for a complex system (e.g. a microservice or multi-table abstraction) when a standard library utility or small function completely solves the problem, explicitly push back with the simpler alternative and trade-off comparison.
4. **Stop When Confused**: If an existing implementation contains conflicting signals or unclear design choices, pause execution, name the exact point of confusion, and ask rather than guessing.

---

## Structured Decision Brief Architecture (`decision-brief`, `D<N>`)

Never present critical architectural forks or technical trade-offs as loose, unstructured prose. Every decision presented to a human developer must follow the strict Decision Brief format:

```markdown
### D<N>: <One-line descriptive decision title>
- **Grounding**: <One short sentence identifying active repository, branch, and module context>
- **ELI10**: <Plain English explanation of what is being decided, 2 to 4 sentences naming real stakes>
- **Stakes If Wrong**: <One sentence explaining exactly what breaks, what users experience, or what data is compromised>
- **Recommendation**: <Option letter> because <concrete technical rationale>
- **Completeness**: A = 10/10, B = 7/10 (or: "Note: options differ in kind, not coverage; no completeness score")

#### Options:
- **A) <Option Title> (recommended)**
  - [x] Pro: <Observable concrete advantage, minimum 40 characters>
  - [x] Pro: <Secondary concrete operational benefit, minimum 40 characters>
  - [ ] Con: <Honest technical trade-off or downside, minimum 40 characters>
  - Effort: (human: ~2 days / agent: ~15 min)

- **B) <Option Title>**
  - [x] Pro: <Observable concrete advantage, minimum 40 characters>
  - [ ] Con: <Honest technical trade-off or downside, minimum 40 characters>
  - Effort: (human: ~4 hours / agent: ~5 min)

- **Net Trade-Off**: <One-line synthesis of the fundamental tension being decided>
```

### Invariants of the Decision Brief
1. **D-Numbering**: The first decision in a discovery or planning cycle is `D1`; subsequent decisions increment sequentially (`D2`, `D3`).
2. **Completeness Scoring**: Rate each option on an objective 10-point scale:
   - `10/10`: Complete production implementation covering all edge cases and error contracts.
   - `7/10`: Happy-path implementation leaving known secondary edge cases for follow-up.
   - `3/10`: Quick shortcut or temporary stub.
   - If choices differ in architectural kind rather than depth, explicitly state: `Note: options differ in kind, not coverage; no completeness score`.
3. **Dual-Scale Effort Labels**: Whenever effort is referenced, display both human team engineering time and AI agent execution time (e.g. `human: ~2 days / agent: ~15 min`). This keeps velocity acceleration visible while maintaining realistic schedule expectations.
4. **Split-Never-Drop Rule for 5+ Options**: When a design space contains 5 or more viable options, never silently truncate, merge, or drop alternatives to fit a UI constraint. Batch them into coherent sub-groups or split into sequential sub-decisions (`D1.1`, `D1.2`) with explicit dependency ordering.
5. **One-Way Door Confirmation**: Irreversible or destructive decisions (dropping tables, force-pushing, removing legacy APIs) require explicit, unambiguous human confirmation before execution.
