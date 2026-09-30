# Test-Driven Development & Implementation Loop

## The TDD Loop (`tdd`)

```
   ┌────────────────────────────────────────────────────────┐
   │                       RED PHASE                        │
   │  Write a failing test at a public seam. Verify it fails│
   │  for the expected reason.                              │
   └───────────────────────────┬────────────────────────────┘
                               │
                               ▼
   ┌────────────────────────────────────────────────────────┐
   │                      GREEN PHASE                       │
   │  Write the minimal production code necessary to make   │
   │  the test pass. No premature abstractions.             │
   └───────────────────────────┬────────────────────────────┘
                               │
                               ▼
   ┌────────────────────────────────────────────────────────┐
   │                     REFACTOR PHASE                     │
   │  Clean up code smells, deepen module boundaries, verify│
   │  tests remain 100% green.                              │
   └────────────────────────────────────────────────────────┘
```

## Banned Test Anti-Patterns
1. **Testing Private Implementation**: Spying on private methods or querying internal state directly.
2. **Mocking Everything**: Mocking internal collaborators instead of using real domain logic with isolated public adapters.
3. **Tautological Assertions**: Re-implementing the production algorithm inside the test assertion.
4. **Horizontal Test Slicing**: Writing all unit tests across all files before writing any implementation.

## Implementation Execution Protocol (`implement`)
1. Pull next unblocked ticket from the dependency DAG.
2. Verify all prerequisites and test runners are operational.
3. Execute TDD loop on the vertical slice.
4. Run static typechecker, linter, and full test suite.
5. Trigger two-axis code review before marking ticket complete.

---

## The Dedicated "De-Sloppify" Cleanup Pass (`de-sloppify`)

### Why Negative Prompts Degrade Implementation
Instructing an agent upfront with negative commands (e.g. *"do not write redundant tests"*, *"do not test compiler features"*) creates downstream cognitive hesitation. The model becomes anxious, skips real edge cases, or writes half-hearted tests.

**The Solution: Two-Pass Separation**. Allow the implementer to be thorough during the Red-Green-Refactor phase. Once green, run a dedicated **De-Sloppify Pass** to strip away test slop without compromising core coverage.

### De-Sloppify Checklist
Review all newly written test files and implementation changes to purge:

1. **Language & Compiler Tests**: Remove tests that only verify language semantics or compiler guarantees (e.g. asserting that `typeof id === 'string'`, testing that TypeScript generics compile, or testing that Python dictionaries map keys).
2. **Framework Behavior Assertions**: Remove tests that merely verify that a third-party framework works (e.g. testing that React useState triggers a re-render or that Express matches a route).
3. **Over-Defensive Checks for Impossible States**: Remove runtime `if (x === null)` branches when the static type system or upstream boundary validation already guarantees non-nullability.
4. **Debug Debris**: Strip all `console.log`, `print()`, `dbg!()`, temporary benchmark timers, and commented-out code snippets.
5. **Post-Cleanup Green Verification**: Re-run the full test suite and typechecker. All domain logic tests must remain 100% green.

---

## The Surgical Diff & Line Traceability Invariant

AI coding assistants frequently introduce regressions and noisy merge conflicts by "improving" surrounding code unprompted. Every modification must adhere strictly to surgical change invariants:

1. **The Line Traceability Test**: Every changed line in the final `git diff` must trace directly to the prompt's acceptance criteria or bug reproduction. If a changed line cannot be justified by the explicit task description, discard it.
2. **Clean Up Your Own Orphans Only**: If your implementation or refactoring makes an existing import, helper function, or variable unused, delete it.
3. **Leave Pre-Existing Dead Code Alone**: Never delete pre-existing dead code, unused functions, or obsolete comments found elsewhere in the file unless the task explicitly requested it. Unprompted deletion causes merge conflicts on active peer branches and pollutes git blame. Mention it to the human developer instead.
4. **Zero Style Drift**: Strictly match the surrounding file's formatting, indentation, quote conventions (`"` vs `'`), semicolon usage, and comment density even if it contradicts your preferences. Never reformat untouched lines as a side effect.

---

## Directory Confinement & Scope Lock Protocol (`freeze`, `unfreeze`, `scope-lock`)

In large monorepos, microservices, or complex multi-package codebases, agents frequently suffer from boundary drift: attempting to fix a localized bug or feature by modifying shared libraries, configuration files, package lockfiles, or parent directories.

### The Scope-Lock Invariant
When working on a bounded ticket or module, establish an explicit directory boundary:
1. **Target Subdirectory Binding**: Define the active boundary path (e.g. `src/modules/billing/`).
2. **Fail-Closed Modification Gate**: File creation (`Write`) or editing (`Edit`) targeting any path outside the boundary is strictly prohibited.
3. **Symlink Resolution**: Evaluate paths against the canonical filesystem destination. An in-boundary symlink pointing outside the boundary is rejected.
4. **Read vs Write Privileges**: Read tools (`Read`, `Glob`, `Grep`) remain unrestricted across the repository for discovery and interface checking; modification privileges remain strictly confined to the locked directory.
5. **Boundary Unfreezing**: Scope can only be expanded via explicit developer consent or ticket progression.

---

## Continuous Checkpoint Mode (`checkpoint`, `WIP`)

Long-running development tasks across multiple files risk losing progress or compounding mistakes if work is not checkpointed frequently.

### Structured Commit Checkpoints
Auto-commit completed logical units using the structured checkpoint format:

```
WIP: <concise summary of what changed>

[engineer-context]
Decisions: <key choices made during this unit>
Remaining: <concrete tasks left to finish the ticket>
Tried: <failed approaches and rejected hypotheses to avoid repeating>
Skill: /engineer
[/engineer-context]
```

### Checkpoint Invariants
1. **Stage Intentional Files Only**: Never run `git add -A` or `git add .`. Explicitly stage only the files modified for that specific logical unit.
2. **Never Commit Broken Tests**: Checkpoints must leave the codebase in a compilable state with passing or expected test assertions. Never commit broken syntax or half-edited files.
3. **Negative Knowledge Retention (`Tried:`)**: Always record failed approaches and why they failed. This preserves negative knowledge across context compaction and prevents subsequent agent turns or subagents from looping on known dead ends.
4. **Squash at Merge / Ship**: When the feature is complete and verified, intermediate `WIP:` commits are squashed into a clean, signed production commit adhering to standard conventional commit specifications.

---

## Code Comment Anti-Slop Hygiene Protocol (`comments`, `comment-hygiene`)

AI coding assistants frequently pollute codebases with redundant, noisy, and decorative comments that obscure production logic. Every comment must pass rigorous purpose and density gates.

### Scope Guardrail for Comment Refactoring
When assigned to clean or edit comments:
- **Comments Only**: Modify or remove comments exclusively.
- **Strict Code Preservation**: Never modify executable code, variable names, function signatures, control flow, imports, indentation, or whitespace. When in doubt, preserve the executable code untouched.

### The 7 Banned Comment Anti-Patterns
1. **Decorative Separators**: Banner dividers constructed from repeated characters, ASCII boxes, or uppercase labels (e.g. `// ==================`, `/* ----- ROUTES ----- */`).
2. **Restating the Obvious**: Comments that echo what the immediate line of code already expresses (e.g. `// Initialize counter` above `let counter = 0;`, `// User class` above `class User`).
3. **Workflow Narration**: Narrating procedural steps as numbered checklists (e.g. `// Step 1: Validate input`, `// Step 2: Query database`, `// Next, send response`). Control flow is visible directly in the code structure.
4. **Empty Category Labels**: Generic labels that carry zero technical information (e.g. `// Core logic`, `// Helper function`, `// Important: please read`).
5. **Vague Placeholders**: Non-actionable TODO comments expressing generic desires rather than concrete issues (e.g. `// TODO: Optimize this`, `// TODO: Add more validation`). A TODO must state the exact task and context required to act on it.
6. **Signature Echoes**: Docstrings or JSDoc blocks that merely restate parameter names and types without adding semantic context (e.g. `@param price The price of the item`).
7. **Decorative Emojis**: Using emojis as icons or status markers in code comments. Keep all technical commentary in plain text.

### The One-Line Constraint Rule
Cut over-explained comments down to the underlying constraint:
- State the platform trap, silent failure mode, protocol invariant, or performance consideration in a single concise line.
- Use a second line only if it introduces an independent, necessary operational fact. Never expand comments into multi-paragraph essays or reasoning chains.

### Comments That Must Be Preserved
Never strip or abbreviate comments that articulate:
- Domain business logic rules and policy constraints
- Architectural design decisions and trade-offs
- Cryptographic and zero-trust security invariants
- Memory or CPU performance boundaries
- Asynchronous concurrency and locking guarantees
- Protocol and wire-format requirements
- Hardware, operating system, or compiler bug workarounds
- Edge cases and defensive pre-conditions

### Code Comment Checklist
Review all modified files against these criteria:
- Every comment introduces information not visible in the code itself (R-31).
- Zero decorative ASCII banners or divider lines.
- Zero obvious restatements of code identifiers or signatures.
- Zero procedural step-by-step narration.
- Zero non-actionable or vague TODOs.
- Zero decorative emojis.
- Comment density is balanced (logical block level rather than line-by-line).
- Length respects the one-line constraint rule.
- Executable code and structure remained completely untouched.

