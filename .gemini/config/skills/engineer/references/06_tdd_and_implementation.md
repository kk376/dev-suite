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
