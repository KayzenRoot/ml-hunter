# Integration Ownership & Reconciliation Contract

Status: PLANNED CONTRACT
Owners: M12-M14

## Problem
ML Hunter may connect to ERP and marketplace systems that expose overlapping products, stock, prices, orders and fiscal/financial data. Dual writers create loops, oscillation and corrupted truth.

## Ownership rule
For each `(tenant, domain, entity/field/action, integration)` assign one role:
- AUTHORITATIVE_WRITER
- READER
- MIRROR
- NOT_SUPPORTED

A domain action must have at most one accepted authoritative mutation path at a time unless an explicit orchestration ADR defines otherwise.

## Reconciliation state
MATCHED | PENDING | DRIFTED | CONFLICT | UNKNOWN | QUARANTINED

## Reconciliation record
Contains entity key, desired/local state ref, each external observed-state ref, ownership rule version, timestamps/freshness, differences, proposed repair, evidence and final resolution.

## Invariants
- Reconciliation never silently chooses newest timestamp as truth when ownership says otherwise.
- Provider success response alone is not final truth when observed state can be reconciled.
- Timeouts/unknown mutation outcomes trigger read/reconcile before retry where provider semantics require it.
- Duplicate notifications are idempotent.
- Manual override is attributable and versioned.
- Provider payload never becomes core domain schema.
- Capability loss moves affected operation to degraded/unknown rather than fabricated support.

## Repair classes
NOOP, REFRESH, REPLAY_SAFE_COMMAND, REQUIRE_REVIEW, QUARANTINE_CONNECTOR, DISABLE_MUTATION.
All mutation repairs still pass authorization and Commerce Command Firewall.
