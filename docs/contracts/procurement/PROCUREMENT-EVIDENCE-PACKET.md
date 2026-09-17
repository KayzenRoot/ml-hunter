# Procurement Evidence Packet (PEP)

Status: PLANNED CONTRACT
Owner: M11

## Purpose
Carry an approved economic decision into a purchase workflow without forcing procurement to recalculate or rediscover the opportunity.

## Conceptual schema
```yaml
packet_id: id
version: version
tenant_id: id
decision_capsule_ref: ref
canonical_product_ref: ref
pack_ref: ref
source_offer_ref: ref
source_location_ref: ref-or-null
approved_price:
  target: money
  max_cost: money
  expires_at: timestamp-or-null
quantity_envelope:
  test: qty-or-null
  min: qty-or-null
  target: qty
  max: qty
capital:
  reservation_ref: ref
  max_commitment: money
constraints:
  moq: qty-or-null
  storage: refs
  expiry_or_shelf_life: refs-or-null
  compliance: refs
approval:
  approved_by: actor-ref
  policy_version: ref
  approved_at: timestamp
evidence_refs: refs
```

## Invariants
- Purchase above max_cost or max quantity requires new authorization/recalculation.
- Expired critical evidence triggers recheck/ECB.
- Product/pack substitution requires identity and economics revalidation.
- Actual purchase/receipt data is recorded separately from approved projection.
- Packet never contains credentials.
- Approval is attributable and tenant-scoped.

## Technology: Procurement Drift Gate (PDG) — ADOPT
At execution/receipt, compare reality against approved packet: price, pack, quantity, source, expiry/condition and material constraints. Drift beyond policy blocks or requires review rather than silently accepting changed economics.
