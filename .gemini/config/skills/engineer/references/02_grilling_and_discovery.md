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
