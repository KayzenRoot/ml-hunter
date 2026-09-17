# Evidence-Based Release Gate (EBRG)

Status: PLANNED CONTRACT
Owners: M22-M25 with GEF governance

## Purpose
A release is accepted from evidence, not optimism. Required evidence is selected by change impact and Work Order acceptance criteria.

## Evidence states
PASS, FAIL, UNKNOWN, NOT_APPLICABLE. NOT_APPLICABLE requires a reason and policy support. Missing required evidence is UNKNOWN, never PASS.

## Candidate categories
- unit/property/contract/integration/E2E tests
- deterministic financial golden cases
- tenant isolation/security/privacy/secret checks
- migration and compatibility evidence
- backup/restore proof
- performance/resource budgets
- data quality/freshness readiness
- observability/SLO readiness
- AI evaluation/model-routing evidence when applicable
- source compliance evidence when acquisition behavior changes
- deployment/profile validation
- exact-head/build provenance

## Severity
CRITICAL/HIGH failures block. UNKNOWN mandatory CRITICAL/HIGH evidence blocks. Lower-severity acceptance follows governed risk policy and must be recorded, not silently ignored.

## Invariants
- Evidence references exact candidate revision/artifacts where applicable.
- Stale evidence cannot automatically certify changed behavior.
- A passing aggregate score cannot mask a blocking failure.
- Manual waivers are explicit, attributable, scoped, expiring where appropriate and governed.
- Release gate never fabricates unavailable external-provider evidence.

## GEF integration
EBRG complements, not replaces, Work Order, DoD, exact-head audit, checkpoint and STOP CONDITION. It is the machine-oriented evidence layer consumed by those governance controls.
