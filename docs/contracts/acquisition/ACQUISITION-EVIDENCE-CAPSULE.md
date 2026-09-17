# Acquisition Evidence Capsule (AEC)

Status: PLANNED CONTRACT
Owners: M02-M06
Consumers: M07+ Price/Market/Profit/Hunter/AI/Commerce

## Purpose
Provide a compact, evidence-grounded and versioned acquisition-side contract so downstream modules do not need to understand every supplier adapter, collector payload, geography implementation, identity algorithm or media pipeline.

## Conceptual contract
```yaml
capsule_id: stable-id
schema_version: version
created_at: timestamp
tenant_scope: shared-or-tenant-reference
product:
  canonical_product_id: id-or-null
  identity_status: confirmed|probable|ambiguous|unknown
  match_proof_ref: evidence-ref
  pack_normalization_ref: evidence-ref
source_offer:
  source_id: id
  source_location_id: id-or-null
  offer_ref: evidence-ref
  acquisition_price: value-with-truth-envelope
  quantity_tier: normalized-tier
  availability: value-with-truth-envelope
geography:
  economic_reach_ref: evidence-ref
  landed_acquisition_inputs_ref: evidence-ref
media:
  approved_media_refs: refs
  provenance_refs: refs
truth:
  evidence_refs: refs
  freshness_summary: summary
  uncertainty_summary: summary
policy:
  source_policy_state: state
  restrictions: list
lineage:
  source_versions: refs
  algorithm_versions: refs
```

## Invariants
- Capsule is a snapshot/reference envelope, not a mutable dumping ground.
- Secrets/raw credentials are forbidden.
- UNKNOWN fields remain explicit.
- Estimates carry truth envelope/method reference.
- A capsule may be superseded but historical decision linkage remains.
- Downstream consumers must not infer stronger confidence than capsule evidence permits.
- Raw evidence may live elsewhere; AEC carries durable references and necessary normalized decision inputs.

## Performance objective
Keep the common downstream representation small enough for cheap storage/cache/event transfer and selective LLM tool context. Exact byte target is UNKNOWN until stack/schema benchmarks exist.

## Failure behavior
Incomplete capsule can be valid but must expose completeness/uncertainty. High-risk downstream actions may reject incomplete capsules according to policy.
