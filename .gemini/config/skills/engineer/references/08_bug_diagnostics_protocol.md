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

---

## The Iron Laws of Root-Cause Investigation (`investigate`)

1. **No Fixes Without Root Cause**: Never apply defensive monkey-patches, null checks, or speculative retries to mask an unexplained symptom. If you do not understand why the defect occurs, you do not possess the fix.
2. **Claimed Limitations Require Evidence**: When an external API, compiler, or library fails, never claim "the API cannot do this" or "this platform is unsupported" based on pattern-matching. Such material claims must be substantiated with verbatim error outputs, official documentation citations, or live isolated probes.
3. **Diagnostic Scope Freezing**: When debugging, lock the edit boundary strictly to the failing subsystem (`freeze`). Refuse to alter external interfaces, data schemas, or adjacent callers to bypass a localized failure.
4. **Recording Failed Hypotheses**: If a diagnostic hypothesis is disproved or a trial patch fails, record the negative result immediately:
   - What was changed
   - What symptom resulted
   - Why the hypothesis was rejected
   This prevents looping across agent turns and ensures context compaction does not erase lessons learned.
