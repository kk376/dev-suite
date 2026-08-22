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
