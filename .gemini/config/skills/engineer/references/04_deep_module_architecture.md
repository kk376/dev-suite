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

### Boundary Enforcement Configuration (`dependency-cruiser.config.cjs`)

```javascript
// @ts-check
/** Where packages live. One immediate child dir per package (flat, no nesting). */
const PACKAGES_ROOT = "src/packages";
const R = PACKAGES_ROOT;
const PACKAGE_INTERNALS = `^${R}/[^/]+/[^/]+/`;

/** @type {import('dependency-cruiser').IConfiguration} */
module.exports = {
  forbidden: [
    {
      name: "entrypoint-boundary-from-app",
      comment: "App/root code may import a package's entry points (its root files), but nothing inside its subfolders.",
      severity: "error",
      from: { pathNot: `^${R}/` },
      to: { path: PACKAGE_INTERNALS },
    },
    {
      name: "entrypoint-boundary-across-packages",
      comment: "A package's own files import each other freely, but may reach OTHER packages only through their entry points, never their internals.",
      severity: "error",
      from: { path: `^${R}/([^/]+)/`, pathNot: `^${R}/[^/]+/tests/` },
      to: {
        path: PACKAGE_INTERNALS,
        pathNot: `^${R}/$1/`,
      },
    },
    {
      name: "tests-through-entrypoints",
      comment: "A package's tests exercise it through its entry points: never any package's internals, not even their own.",
      severity: "error",
      from: { path: `^${R}/([^/]+)/tests/` },
      to: {
        path: PACKAGE_INTERNALS,
        pathNot: `^${R}/$1/tests/`,
      },
    },
    {
      name: "tests-folder-is-private",
      comment: "A package's tests/ folder is reachable only from tests.",
      severity: "error",
      from: { pathNot: `^${R}/[^/]+/tests/` },
      to: { path: `^${R}/[^/]+/tests/` },
    },
    {
      name: "no-circular",
      comment: "No dependency cycles.",
      severity: "error",
      from: {},
      to: { circular: true },
    },
  ],
  options: {
    doNotFollow: { path: "node_modules" },
    tsConfig: { fileName: "tsconfig.json" },
    enhancedResolveOptions: {
      extensions: [".ts", ".tsx", ".js", ".jsx", ".json"],
    },
  },
};
```

---

## Anti-Speculative Simplicity & The Timing of Complexity

A primary failure mode of software architecture is adding complexity before it is needed. Good architecture is not an exhaustive taxonomy of hypothetical futures; it solves today's problem with deep, minimal interfaces and leaves code easily refactorable for tomorrow.

### Banned Speculative Patterns
1. **Single-Use Design Patterns**: Never implement an abstract Factory, Strategy, or Provider pattern when only one concrete behavior exists. Write a single function. If a second algorithm emerges later, refactor then.
2. **Speculative Configurability & Leaky Flags**: Never add configuration options, flags, or parameters for features that were not explicitly requested ("just in case someone needs this later").
3. **Over-Defensive Checks for Impossible Scenarios**: Do not clutter logic with defensive branches for states that are structurally impossible given the type system and boundary validation.
4. **The 200-to-50 Rule**: If a proposed implementation requires 200 lines across 4 files when a clean 50-line module achieves the same correctness and testability, delete the bloat and write the 50 lines. Ask: *"Would a principal engineer reject this as overcomplicated?"* If yes, simplify.

