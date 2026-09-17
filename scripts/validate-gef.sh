#!/usr/bin/env bash
set -euo pipefail

required=(
  README.md
  SOURCE-HIERARCHY.md
  PROJECT-MASTER.md
  SCOPE.md
  REQUIREMENTS.md
  ARCHITECTURE.md
  SECURITY.md
  TEST-BENCHMARK-PLAN.md
  DEPLOYMENT.md
  BACKLOG.md
  DEFINITION-OF-DONE.md
  DECISIONS-LEDGER.md
  AGENTS.md
  .engineering/CHECKPOINT.md
  .engineering/CHECKPOINT.json
  .engineering/decisions/ADR-0001-GEF-V1-ADOPTION.md
  .engineering/work-orders/MLH-WO-0001-GEF-ADOPTION.md
  .engineering/work-orders/MLH-WO-0002-PRODUCT-DISCOVERY.md
  .engineering/context-locks/MLH-WO-0001-CONTEXT-LOCK.md
  .engineering/receipts/REPOSITORY-DISCOVERY-RECEIPT.md
  .engineering/receipts/COLLISION-PRESERVATION-ANALYSIS.md
  .engineering/evidence/MLH-WO-0001-EVIDENCE.md
  .engineering/audits/MLH-WO-0001-AUDIT.md
  docs/development/GEF-WORKFLOW.md
  docs/operations/RECOVERY.md
  .github/pull_request_template.md
  .github/ISSUE_TEMPLATE/work-order.yml
  .github/workflows/gef-governance.yml
)

for path in "${required[@]}"; do
  test -s "$path" || { echo "missing or empty required file: $path" >&2; exit 1; }
done

python3 -m json.tool .engineering/CHECKPOINT.json >/dev/null

grep -q 'GREENFIELD' PROJECT-MASTER.md
grep -q 'MLH-WO-0001-GEF-ADOPTION' .engineering/CHECKPOINT.md
grep -q 'MLH-WO-0002-PRODUCT-DISCOVERY' BACKLOG.md
grep -q 'GEF_ADOPTION_EXACT_HEAD_EVIDENCE_REQUIRED' .engineering/CHECKPOINT.md

echo 'GEF governance validation: PASS'
