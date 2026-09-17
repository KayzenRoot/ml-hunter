# MLH-WO-0001-GEF-ADOPTION

## TITLE
Adopt GEF Bootstrap V1.0.0 into ML Hunter.

## OBJECTIVE
Establish the minimum complete governed engineering foundation in the empty `KayzenRoot/ml-hunter` repository without inventing product scope.

## CONTEXT
The repository was empty at discovery time and is classified `GREENFIELD`.

## SOURCE INPUTS
GEF Bootstrap V1.0.0 Universal Adoption Prompt; repository metadata and Git state.

## IN SCOPE
Source pack, checkpoint, Work Order mechanism, decisions, context lock, discovery/collision receipts, validation script/workflow, PR/issue templates, security/recovery/test/deployment expectations, first post-adoption Work Order.

## OUT OF SCOPE
Product design/implementation, stack selection, deployment, database/API/UI features.

## FILES / AREAS ALLOWED
Root governance docs, `.engineering/**`, `.github/**`, `docs/**`, `scripts/validate-gef.sh`.

## PRESERVATION CONSTRAINTS
Preserve initial Git history; no force-push; do not claim non-existent product behavior.

## REQUIREMENTS
MLH-GOV-001 through MLH-GOV-010.

## ARCHITECTURE RULES
Repository governance only. Product architecture remains undecided.

## SECURITY CONSTRAINTS
No secrets; least-privilege workflow; no unsafe dynamic shell inputs.

## ACCEPTANCE CRITERIA
1. Required canonical sources exist and are internally consistent.
2. Repository classification and collision analysis are recorded.
3. `bash scripts/validate-gef.sh` succeeds in CI for exact candidate head.
4. PR exact-head audit has CRITICAL=0, HIGH=0 and no evidence/scope mismatch.
5. Adoption merges without destructive migration.
6. Post-adoption checkpoint promotes state and activates `MLH-WO-0002`.

## TESTS
`bash scripts/validate-gef.sh` plus GitHub Actions result for candidate head.

## EVIDENCE
PR diff, candidate SHA, workflow/status checks, exact-head technical review, final merge SHA.

## REVIEW FORMAT
Verdict: `APPROVED | CORRECTION_REQUIRED | BLOCKED`, in Brazilian Portuguese, with candidate SHA and severity counts.

## ROLLBACK / RECOVERY
Before merge, close/revert the adoption branch/PR. After merge, use a normal revert PR; never rewrite protected history.

## DELIVERABLES
Governance source pack, automation, evidence/audit records and next Work Order.

## STOP CONDITION
`GEF_V1_ADOPTED_READY_FOR_GOVERNED_DEVELOPMENT` only after accepted merge and post-adoption checkpoint. Until then use `GEF_ADOPTION_EXACT_HEAD_EVIDENCE_REQUIRED` or a factual capability-gap stop.
