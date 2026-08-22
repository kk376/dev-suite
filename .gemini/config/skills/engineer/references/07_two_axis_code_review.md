# Two-Axis Code Review & Fowler Smells Catalog

## The Two-Axis Review Architecture (`code-review`)

Run two parallel, isolated review passes on the diff (`git diff <target-branch>...HEAD`):

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           TWO-AXIS CODE REVIEW                              │
├──────────────────────────────────────┬──────────────────────────────────────┤
│ 1. STANDARDS AXIS                    │ 2. SPEC & CONTRACT AXIS              │
│ - Repository conventions & styles    │ - Full acceptance criteria met       │
│ - Zero warnings / zero lint errors   │ - Zero missing edge cases            │
│ - Deep module design verified        │ - Zero unauthorized scope creep      │
│ - Fowler Code Smells check           │ - Out-of-scope boundaries respected  │
└──────────────────────────────────────┴──────────────────────────────────────┘
```

## Fowler Code Smells Checklist
- **Feature Envy**: A method that accesses the data of another object more than its own. (Fix: Move method).
- **Primitive Obsession**: Using raw primitives (strings, numbers) instead of typed value objects/domain types (e.g. `UserId`, `Email`, `Money`).
- **Data Clumps**: Groups of fields/parameters frequently passed together. (Fix: Extract class or interface).
- **Shotgun Surgery**: Making a single conceptual change requires edits across 10 different files. (Fix: Consolidate module boundary).
- **Divergent Change**: A single module is changed for many unrelated reasons. (Fix: Split responsibilities).
- **Speculative Generality**: Hooks, parameters, or abstractions built for hypothetical future requirements. (Fix: YAGNI - remove).
- **Mysterious Name**: Unclear variables, functions, or types that fail to use `CONTEXT.md` vocabulary.
