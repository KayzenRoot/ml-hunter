# Tenant Context Capsule (TCC)

Status: PLANNED CONTRACT
Owner: M17

## Purpose
Provide the minimum validated tenant/actor context needed by APIs, jobs, events and internal tools without propagating the entire user/session/tenant model.

## Conceptual fields
```yaml
capsule_version: version
tenant_id: id
workspace_id: id-or-null
actor:
  actor_id: id
  actor_type: HUMAN|SERVICE|JOB|EXTERNAL_CONNECTOR
membership_ref: ref-or-null
role_permission_snapshot_ref: ref
entitlement_snapshot_ref: ref
policy_snapshot_ref: ref
issued_at: timestamp
expires_at: timestamp-or-null
correlation_id: id
parent_context_ref: ref-or-null
```

## Invariants
- No secret credentials or personal profile payloads.
- Tenant ID cannot be client-swapped after trusted issuance.
- Capsule does not itself grant permission; consumers evaluate required authorization/guards.
- Entitlement and authorization are separate.
- Jobs derived from a request receive an explicit derived context, not ambient thread/session state.
- Cross-tenant platform operations require a separately modeled audited platform scope, never a magic tenant ID.
- Cache/event keys must not trust unvalidated tenant fields.

## Security tests
Tamper tenant ID; replay expired context; downgrade role; entitlement/permission mismatch; job retry with wrong tenant; cross-tenant cache collision; platform-scope abuse.
