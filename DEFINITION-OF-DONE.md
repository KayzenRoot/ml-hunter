# ML Hunter Definition of Done

An increment is done only when all applicable conditions are objectively satisfied.

## Governed increment DoD

- Work Order exists with stable ID and STOP CONDITION.
- Context/source check confirms the Work Order is not stale.
- Scope and architecture constraints are respected.
- Required implementation/deliverables exist.
- Required tests/checks have run against the candidate.
- Evidence is bound to the exact candidate head or immutable workflow evidence.
- CRITICAL = 0 and HIGH = 0 for release-blocking findings.
- No unresolved acceptance-criteria failure remains.
- Technical audit verdict is `APPROVED` for the exact head.
- Checkpoint delta accurately describes accepted state.
- Merge/integration follows repository policy.
- Canonical documentation is synchronized with proved behavior.

## GEF adoption DoD

Additionally:

- repository discovery/classification recorded;
- collision/preservation analysis recorded;
- source pack and governance paths established;
- real validation command recorded and passing;
- Git/GitHub workflow documented;
- security/recovery expectations recorded;
- first post-adoption Work Order ready;
- post-adoption checkpoint marks GEF as adopted without inflating product progress.
