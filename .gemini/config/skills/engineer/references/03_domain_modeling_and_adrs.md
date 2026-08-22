# Domain Modeling & Architecture Decision Records

## Ubiquitous Language & `CONTEXT.md`

`CONTEXT.md` is the single source of truth for project-specific terminology, domain concepts, and architectural invariants.

### Rules for `CONTEXT.md`:
1. **No Code Snippets**: Explain concepts, lifecycles, business rules, and domain models using natural, unambiguous language.
2. **Strict Glossary**: Define overloaded or domain-specific terms clearly.
3. **Eliminate Jargon Drift**: When new terms emerge during grilling or implementation, record them immediately in `CONTEXT.md`.

---

## Architecture Decision Records (`docs/adr/`)

ADRs document significant architectural decisions. Offer ADRs sparingly, strictly when all 3 criteria are met:
1. **Hard to Reverse**: The cost of changing your mind later is significant.
2. **Surprising Without Context**: A future engineer or agent will wonder why it was built this way.
3. **Result of a Real Trade-Off**: Genuine viable alternatives existed, and one was chosen with clear trade-offs.

### Standard ADR Format
```markdown
# ADR-0001: [Short Title]

## Status
Accepted | Superseded | Deprecated

## Context
What problem were we facing? What constraints existed?

## Decision
What specific technical choice did we make?

## Alternatives Considered
- **Alternative A**: Why it was rejected.
- **Alternative B**: Why it was rejected.

## Consequences
### Positive
- Benefit 1
- Benefit 2

### Negative / Trade-Offs
- Trade-off 1 (and how we mitigate it)
```
