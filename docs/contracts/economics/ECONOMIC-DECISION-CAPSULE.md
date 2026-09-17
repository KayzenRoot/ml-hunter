# Economic Decision Capsule (EDC)

Status: PLANNED CONTRACT
Owners: M07-M11

## Purpose
Freeze the evidence/calculation/policy context of a material commercial recommendation so it can be explained, replayed, audited and compared with realized outcomes.

## Conceptual schema
```yaml
decision_capsule_id: id
schema_version: version
created_at: timestamp
tenant_id: id
acquisition_evidence_capsule_ref: ref
market_evidence_ref: ref
price_context_ref: ref
economic_scenario:
  scenario_id: id
  calculation_version: version
  currency: code
  inputs_ref: ref
  outputs:
    expected_sell_price: truth-envelope-money
    contribution_profit: truth-envelope-money
    net_profit: truth-envelope-money
    margin: value
    roi: value
    break_even_sell_price: money
    max_acquisition_cost: money
    capital_required: money
  uncertainty_ref: ref
decision:
  action: BUY_TEST|BUY|RESEARCH|WAIT|SKIP|RECHECK
  rationale_graph_ref: ref
  hard_blocks: list
  score_version: version
  score_components_ref: ref
  next_evidence_action_ref: ref-or-null
  expires_at: timestamp-or-null
policy:
  tenant_policy_version: ref
  authorization_state: state
lineage:
  evidence_refs: refs
  algorithm_versions: refs
```

## Invariants
- EDC is immutable/versioned after creation; corrections create superseding capsules.
- No secret credentials/raw tokens.
- Decision does not equal execution authorization.
- AI narrative is optional and non-authoritative.
- Formula and policy versions are mandatory for consequential recommendations.
- Projected values cannot later be overwritten with realized values.
- Realized outcome links back to EDC for learning/calibration.
- UNKNOWN material inputs remain explicit or block according to policy.

## Replay
Historical replay uses the exact evidence refs, algorithm/formula versions and policy version available at decision time. If dependencies cannot be reproduced, replay status is PARTIAL/UNKNOWN rather than fabricated PASS.
