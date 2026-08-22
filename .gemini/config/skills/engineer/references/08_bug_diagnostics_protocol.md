# The 6-Phase Systematic Bug Diagnostic Protocol

## The 6 Phases of Bug Diagnosis (`diagnosing-bugs`)

```
[Phase 1: Red Loop] ──► [Phase 2: Minimize] ──► [Phase 3: Hypothesize]
                                                       │
[Phase 6: Clean]    ◄── [Phase 5: Fix & Regress] ◄─────┴──► [Phase 4: Instrument]
```

### Phase 1: Tight Feedback Loop
- **Rule**: Refuse to guess or hypothesize until you have **one fast, deterministic, agent-runnable command** (test case, curl, CLI snapshot) that goes **red on this exact symptom**.
- Speed target: < 3 seconds per run.

### Phase 2: Minimization
- Strip away unrelated parameters, large payloads, extra headers, and surrounding code.
- Reduce to the minimal reproducible example where every remaining line is strictly load-bearing.

### Phase 3: Falsifiable Hypotheses
- Generate 3 to 5 clear hypotheses.
- Mandatory format: *"If X is the cause, changing Y will make symptom Z disappear."*

### Phase 4: Targeted Boundary Instrumentation
- Place tagged log statements at suspected component boundaries:
  `console.log('[DEBUG-e8a2]', { input, state });`
- Use unique 4-character hex tags so cleanup is a single search.

### Phase 5: Root Cause Fix & Regression Test
- Write a permanent automated regression test at the true public seam.
- Implement the root-cause fix (never apply surface-level monkey-patches).
- Verify the regression test transitions from RED $	o$ GREEN.

### Phase 6: Verification & Tag Cleanup
- Run the full suite to guarantee zero side-effects.
- Delete all `[DEBUG-...]` logging tags from the codebase.
