# MLH-WO-0002-PRODUCT-DISCOVERY

## TITLE
Close ML Hunter product objective, users, boundaries and success criteria.

## OBJECTIVE
Produce an evidence-backed product definition sufficient to create authoritative scope, product requirements and architecture options without guessing.

## CONTEXT
The repository is greenfield. GEF governance exists, but product objective and stack are deliberately unresolved.

## SOURCE INPUTS
Accepted post-adoption checkpoint; user discovery answers; any explicit product references supplied later.

## IN SCOPE
Problem statement, target users/operators, primary workflows, necessary capabilities, constraints, data sensitivity, integrations, deployment expectations, success metrics, non-goals and initial risk classification.

## OUT OF SCOPE
Product code, final architecture implementation, speculative features not accepted by discovery.

## FILES / AREAS ALLOWED
Planning/governance documentation and new discovery evidence only.

## PRESERVATION CONSTRAINTS
Do not alter adopted governance semantics or fabricate user decisions.

## REQUIREMENTS
Capture unresolved product requirements as explicit decisions/questions, not assumptions.

## ARCHITECTURE RULES
Architecture remains options-only until requirements are sufficiently closed and an ADR is approved.

## SECURITY CONSTRAINTS
Identify likely sensitive data, authority boundaries and irreversible actions during discovery.

## ACCEPTANCE CRITERIA
1. Product objective is explicit and approved.
2. Target users and primary jobs/workflows are explicit.
3. NECESSARY/IMPORTANT/FUTURE/OUT OF SCOPE classification exists.
4. Key functional and non-functional requirements are traceable.
5. Constraints, integrations and risk level are recorded.
6. Next legal architecture/requirements increment is unambiguous.

## TESTS
Documentation consistency checks plus reviewer verification against source discovery evidence.

## EVIDENCE
Discovery transcript/references, updated canonical docs, decision deltas and review.

## REVIEW FORMAT
`APPROVED | CORRECTION_REQUIRED | BLOCKED` with missing/contradictory decisions listed.

## ROLLBACK / RECOVERY
Revert unaccepted planning deltas; do not overwrite earlier accepted decisions without a superseding ADR.

## DELIVERABLES
Approved product definition, updated Scope/Requirements/Project Master/Backlog and proposed architecture decision work.

## STOP CONDITION
`PRODUCT_DISCOVERY_APPROVED_READY_FOR_REQUIREMENTS_ARCHITECTURE`
