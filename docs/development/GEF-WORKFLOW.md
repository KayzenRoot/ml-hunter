# GEF Development Workflow

## Lifecycle

`ANALYZE → SOURCE CHECK → NEXT NECESSARY INCREMENT → WORK ORDER → CONTEXT LOCK → PREFLIGHT → EXECUTOR → TESTS/EVIDENCE → PR → EXACT-HEAD AUDIT → CHECKPOINT DELTA → MERGE → NEXT`

## Git policy

- Use feature/work branches for substantial work.
- Use PRs for substantial integration.
- Do not force-push protected/shared history.
- Candidate review and tests must bind to the same head SHA.
- If PR head changes after audit, audit again.
- Merge method follows repository capabilities/policy; the adoption executor should provide expected head SHA when merging.

## Single-owner operation

A human approval gate is not required merely for ceremony. A technical exact-head audit is still required.

## Capability gaps

If repository rulesets/administrative protections cannot be read or changed by the connected GitHub integration, record the limitation instead of claiming protection is enabled.
