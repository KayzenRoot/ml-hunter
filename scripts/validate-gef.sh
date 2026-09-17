#!/usr/bin/env bash
set -euo pipefail

fail() {
  echo "GEF governance validation: FAIL — $1" >&2
  exit 1
}

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
  .engineering/receipts/CAPABILITY-GAPS.md
  .engineering/evidence/MLH-WO-0001-EVIDENCE.md
  .engineering/audits/MLH-WO-0001-AUDIT.md
  docs/development/GEF-WORKFLOW.md
  docs/operations/RECOVERY.md
  .github/pull_request_template.md
  .github/ISSUE_TEMPLATE/work-order.yml
  .github/workflows/gef-governance.yml
)

for path in "${required[@]}"; do
  [[ -s "$path" ]] || fail "missing or empty required file: $path"
done

python3 - <<'PY' || exit 1
import json
from pathlib import Path

p = Path('.engineering/CHECKPOINT.json')
try:
    data = json.loads(p.read_text(encoding='utf-8'))
except Exception as exc:
    raise SystemExit(f'GEF governance validation: FAIL — invalid checkpoint JSON: {exc}')

required = {
    'schema': 'gef-checkpoint/1',
    'project': 'ML Hunter',
    'repository': 'KayzenRoot/ml-hunter',
    'gef_version': '1.0.0',
}
for key, expected in required.items():
    if data.get(key) != expected:
        raise SystemExit(f'GEF governance validation: FAIL — checkpoint {key!r} mismatch')

stop = data.get('stop_condition')
if not isinstance(stop, str) or not stop.strip():
    raise SystemExit('GEF governance validation: FAIL — checkpoint stop_condition missing')

next_id = data.get('next_legal_increment')
if next_id:
    wo = Path('.engineering/work-orders') / f'{next_id}.md'
    if not wo.is_file() or wo.stat().st_size == 0:
        raise SystemExit(f'GEF governance validation: FAIL — next Work Order missing: {wo}')

human = Path('.engineering/CHECKPOINT.md').read_text(encoding='utf-8')
if stop not in human:
    raise SystemExit('GEF governance validation: FAIL — human/machine checkpoint STOP CONDITION mismatch')

print('Checkpoint consistency: PASS')
PY

grep -Fq 'description:' .github/ISSUE_TEMPLATE/work-order.yml || fail "Issue Form is missing required description metadata"
if grep -Fq 'about:' .github/ISSUE_TEMPLATE/work-order.yml; then
  fail "Issue Form contains legacy about metadata"
fi

echo 'GEF governance validation: PASS'
