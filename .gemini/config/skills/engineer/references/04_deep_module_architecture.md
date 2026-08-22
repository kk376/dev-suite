# Deep Module Architecture & Codebase Design

Based on John Ousterhout's *A Philosophy of Software Design*.

## Deep vs Shallow Modules

```
    SHALLOW MODULE (Banned)                  DEEP MODULE (Enforced)
┌──────────────────────────────┐          ┌───────────────────────────┐
│     Large, Complex API       │          │  Small, Minimal Interface │
├──────────────────────────────┤          ├───────────────────────────┤
│                              │          │                           │
│   Thin Pass-Through Logic    │          │  Deep, Powerful Internal  │
│                              │          │        Mechanisms         │
└──────────────────────────────┘          │                           │
                                          └───────────────────────────┘
```

- **Deep Module**: Maximizes **leverage** for callers (simple API) and **locality** for maintainers (internal encapsulation).
- **Shallow Module**: Leaks internal details, adds indirection without reducing cognitive load, and creates pass-through clutter.

## The Deletion Test
> "If you delete this module, does complexity disappear or scatter?"
- If deleting the module makes the system simpler with zero loss of leverage, it was a **shallow pass-through**.
- If deleting the module forces 10 callers to duplicate complex state/parsing logic, it was **deep and earning its keep**.

## Seams and Adapters
- **Seam**: A public boundary where behavior can be observed and varied without reaching into internals.
- **Adapter**: A concrete implementation of a seam.
- **The Two-Adapter Rule**: If a seam has only one adapter, it may be speculative. Two adapters prove a genuine seam.
- **The Interface is the Test Surface**: Tests must cross the exact same seam as production callers.

## TypeScript Deep Modules (`setup-ts-deep-modules`)
- Use package-level or folder-level entry points (`index.ts` or `exports`).
- Encapsulate private helpers without exporting them outside the module boundary.
- Ban circular dependencies and deep relative imports into sibling module internals (`../../module/internal/helper.ts`).
