# Batch 04 — M17-M21 Contract Pack

Status: PLAN-IN-PROGRESS

## Global trust invariant
No request, job, event, cache entry, AI tool call or consequential command may rely on ambient tenant/security context. Context is explicit, validated, minimal and traceable.

# M17 Multi-Tenant contract
TenantContext = tenant_id + workspace_id? + actor_id + membership/role refs + entitlement refs + policy version + request/correlation context.

Authorization evaluation order: authenticated actor/service -> tenant membership/scope -> permission -> resource scope -> entitlement -> domain/economic/security guard. Entitlement never substitutes permission.

Data visibility classes: PUBLIC_SHARED, PLATFORM_SHARED_RESTRICTED, TENANT_PRIVATE, TENANT_SENSITIVE, SECURITY_RESTRICTED. Cross-class transformations require explicit policy.

Isolation Proof Harness test generators cover repositories, services, caches, queues, events, exports, analytics/read models and AI contexts.

# M18 Data contract
Data ownership is by bounded context, not database table convenience. Cross-context writes use commands/events/contracts; direct foreign writes are forbidden unless architecture ADR explicitly allows them.

Required metadata for material evidence: owner, visibility class, tenant scope, truth class, provenance refs, observed/calculated timestamps, schema version, retention class and lineage anchor when applicable.

Data planes remain logical until stack selection: OLTP, evidence/history, cache, event/outbox, search/read-model, analytics, audit/security. One physical technology may initially serve multiple planes if benchmarks and isolation allow it.

Migration safety: expand/contract where practical; backup/restore or forward-recovery evidence; no destructive migration accepted without explicit recovery path.

# M19 Harness contract
Every asynchronous work item has: job_id, type/version, tenant context, idempotency key where business effect exists, evidence/input refs, attempt/retry budget, deadline/expiry, correlation/causation IDs, output/receipt refs and failure classification.

Failure classes: TRANSIENT, RATE_LIMITED, PROVIDER_DEGRADED, INVALID_INPUT, POLICY_BLOCKED, CONFLICT, PERMANENT, UNKNOWN. Retry policy must depend on class; UNKNOWN consequential mutations reconcile before retry.

Events carry schema version, producer, tenant/data visibility, causation/correlation, occurred_at and payload contract. Contract Drift Gate protects compatibility.

Context Budget Compiler target: derive implementation/AI context from ownership/dependency graph, not chat history. It records selected files, exclusions, estimated token footprint, mandatory invariants and acceptance tests.

# M20 Security contract
Identity types: HUMAN, SERVICE, JOB, EXTERNAL_CONNECTOR. Authentication proof and authorization decision are distinct.

Secret handles are opaque. Resolution occurs only in authorized connector/runtime boundary. Secret material forbidden in browser persistence, ordinary logs/traces, evidence capsules, analytics, prompts/context packs and event payloads.

Consequential commerce actions require server-side authz, tenant policy, economic guard, security guard, idempotency and audit regardless of UI/AI origin.

Security events include authn failures, authz denials, privilege/config changes, secret lifecycle actions, consequential command approvals/execution, tenant isolation violations, suspicious connector behavior and audit integrity failures.

# M21 Source compliance contract
SourceCertification states: UNKNOWN, CANDIDATE, VERIFIED, RESTRICTED, REVIEW_REQUIRED, REJECTED, PAID_FUTURE.

Source Legitimacy Passport fields: source identity; method; policy/terms evidence refs; robots evidence when relevant; authentication type; data classes; allowed purposes; forbidden purposes; geography; quota/rate constraints; retention/export/AI-use constraints; reviewed_at; next_review_at; reviewer/evidence; certification state/version.

Collector/runtime activation requires compatible certification. Policy uncertainty defaults to least consequential mode rather than inferred permission.

# Cross-module contracts

## Tenant Context Capsule
Must be minimal, validated at trust boundaries, non-secret, non-user-editable after issuance, short-lived or request/job scoped, and reconstructable from authoritative identity/tenant state when necessary.

## Trust Boundary Manifest
Machine-readable entries should declare boundary id, source/destination context, accepted identity types, data classes, tenant rule, required authz/purpose guards, secret handling, validation and audit requirements.

## Source Legitimacy Passport
Downstream Source Registry references passport version. A source capability can be technically VERIFIED while use is RESTRICTED by compliance; capability and permission remain separate dimensions.

## Data Use Purpose Gate
Purpose examples: OPERATIONAL_DECISION, TENANT_ANALYTICS, PLATFORM_ANALYTICS, AI_INFERENCE, AI_TRAINING, EXPORT, SUPPORT_DIAGNOSTICS. Exact permissions are policy-driven. AI_TRAINING is not implied by AI_INFERENCE.

# New technologies deepened

### Context Budget Compiler (CBC) — EXPERIMENT
Problem: large repos force Codex/LLMs to consume irrelevant context.
Mechanism: graph traversal from WO acceptance criteria -> owning files -> direct contracts -> invariants -> tests, constrained by token budget; produce manifest and missing-context warnings.
Benefit: lower input tokens, faster reasoning, less distraction.
Risk: over-pruning hides dependency.
Benchmark: task success/rework/defect rate and input tokens versus full-context baseline.
Promotion gate: meaningful token/time reduction without statistically/materially worse acceptance outcomes.

### Isolation Proof Harness (IPH) — ADOPT
Mechanism: standardized adversarial fixtures mutate tenant IDs/scopes across each persistence/cache/event/API boundary.
Benchmark: seeded isolation defects must be detected; zero undetected seeded cross-tenant cases in release corpus.

### Evidence Tiering Engine (ETE) — EXPERIMENT
Benchmark against age-only retention/tiering on storage cost, replay success and hot-read latency. Audit/legal retention rules always override optimization.

### Architecture Fitness Ledger (AFL) — EXPERIMENT
Stores results of executable architecture checks over time. Any aggregate score is informational; a single CRITICAL isolation/secret/policy failure still blocks acceptance.

### Policy-Aware Collector Compiler (PACC) — EXPERIMENT
Compile runtime permissions/features/rate policy from Source Legitimacy Passport + Source Capability Contract. Never interprets legal ambiguity autonomously.

# File map
`src/tenancy/domain/tenant.*`
`src/tenancy/context/tenant-context-capsule.*`
`src/tenancy/authorization/entitlement-authorization-gate.*`
`src/data/contracts/data-truth-envelope.*`
`src/data/lineage/reproducibility-anchor.*`
`src/data/query/query-shape-registry.*`
`src/platform/jobs/job-envelope.*`
`src/platform/jobs/failure-classification.*`
`src/platform/events/event-envelope.*`
`src/platform/contracts/contract-drift-gate.*`
`src/platform/context/context-budget-compiler.*`
`src/platform/capabilities/capability-spine.*`
`src/platform/resilience/failure-containment-mesh.*`
`src/security/secrets/secret-handle.*`
`src/security/trust/trust-boundary-manifest.*`
`src/security/audit/security-evidence-graph.*`
`src/compliance/sources/source-legitimacy-passport.*`
`src/compliance/sources/compliance-drift-sentinel.*`
`src/compliance/purpose/data-use-purpose-gate.*`
`tests/isolation/isolation-proof-harness.*`
`tests/architecture/fitness/*`

# Acceptance evidence families
Isolation tests; authz/entitlement tests; secret-leak scanning; job retry/idempotency/reconciliation tests; event compatibility tests; migration recovery tests; data lineage/replay tests; source certification expiry tests; purpose-gate tests; context-pack benchmark; failure containment chaos/fault injection at bounded scale.
