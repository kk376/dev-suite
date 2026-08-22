# Wayfinder & Issue Triage Protocols

## Wayfinder Protocol (`wayfinder`)
For massive, multi-session initiatives where the complete path is clouded by unknowns:
1. **Advance the Frontier**: Identify the immediate next set of decision tickets.
2. **Produce Decisions, Not Deliverables**: Settle architectural prerequisites before scheduling code execution.
3. **Map the Decision DAG**: Track resolved decisions, active frontier, and foggy horizon on the issue tracker.

---

## Triage Protocol (`triage`)
State machine for processing raw incoming bug reports and feature requests:
- **State 1 (Unreviewed)**: Parse bug report $	o$ verify against existing issues for duplicates.
- **State 2 (Reproduction Check)**: Can this be reproduced deterministically? If no $	o$ request minimal reproduction.
- **State 3 (Scoping)**: Classify as Bug, Enhancement, or Question. Assign domain tags.
- **State 4 (Ready for Dev)**: Write structured tracer-bullet ticket and mark as `triage:ready`.
