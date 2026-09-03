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
3. **Verify the Specific Unknown**: Focus strictly on answering the design question—ignore edge-case polish, persistence, or production error handling.
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
   - **Position**: 1–2 declarative sentences.
   - **Reasoning**: Exactly 3 concise, load-bearing bullet points.
   - **Main Risk**: The biggest compromise or vulnerability of their chosen path.
   - **Surprise**: One non-obvious factor or blind spot the other voices might overlook.
3. **Synthesis & Verdict**:
   - Explicitly highlight the **Strongest Dissent** (never smooth over legitimate disagreement).
   - Document whether the Skeptic's **Premise Check** challenged the fundamental question.
   - Produce a definitive synthesized recommendation with concrete trade-off rationale.
