# Batch 04 — M17-M21 Platform, Data, Harness, Security & Compliance

Status: PLAN-IN-PROGRESS
Modules: M17 SaaS & Multi-Tenant Foundation; M18 Data Architecture & Storage; M19 Modular Harness, Backend, Jobs & Integration Architecture; M20 Security, Privacy & Secrets; M21 Compliance, Source Policy & Responsible Collection.

## Mission
Create the technical trust substrate under every ML Hunter capability: tenant isolation, data ownership/lineage, modular execution, bounded contexts, secure identities/secrets, and evidence-backed source/legal policy. This batch must reduce implementation blast radius and Codex context cost rather than merely add infrastructure.

# M17 — SaaS & Multi-Tenant Foundation

Core: Tenant, Workspace, Membership, Role, EntitlementRef, TenantPolicyRef, TenantResourceScope, TenantLifecycle. Single-tenant launch is a deployment state, not a hard-coded architecture.

Rules:
- tenant context mandatory for private operations;
- shared/public evidence explicitly classified;
- cross-tenant joins denied unless an audited platform capability explicitly owns them;
- tenant lifecycle supports provisioning, active, restricted, suspended, export/closure states;
- authorization separate from subscription entitlement and automation mode.

New technology: Tenant Context Capsule (TCC) — ADOPT. Compact signed/validated internal context carries tenant/workspace/actor/role/entitlement/policy references without repeatedly loading the whole tenant model.
New technology: Isolation Proof Harness (IPH) — ADOPT. Generated contract/property tests attempt cross-tenant reads/writes/events/cache-key collisions for every tenant-aware module.
New technology: Tenant Blast-Radius Cell (TBRC) — EXPERIMENT. High-cost/background workloads receive per-tenant queue/concurrency/circuit boundaries to prevent noisy-neighbor cascades.
New technology: Entitlement-Authorization Split Gate (EASG) — ADOPT. Paid capability access and permission to execute an action are evaluated independently.

# M18 — Data Architecture & Storage

Core data planes: transactional tenant data; shared catalog/evidence; append/history; event/outbox; cache; search/read models; analytical aggregates; audit/security evidence. Exact technologies remain architecture-benchmark gated.

Rules:
- data has owner/bounded context;
- no database becomes a universal shared-domain dumping ground;
- truth/provenance/freshness preserved;
- immutable/versioned decision/economic evidence supported;
- retention/privacy class explicit;
- cache keys include tenant/data-class/version where required;
- migrations reversible or have tested forward-recovery plan.

New technology: Data Truth Envelope (DTE) — ADOPT. Standard metadata for truth class, provenance, freshness, confidence/method, lineage and tenant visibility.
New technology: Evidence Tiering Engine (ETE) — EXPERIMENT. Move evidence between HOT/WARM/COLD storage based on decision value, replay need, freshness and cost, not age alone.
New technology: Reproducibility Anchor (RA) — ADOPT. Material decision snapshots reference immutable data/algorithm/policy versions needed for replay.
New technology: Query Shape Registry (QSR) — ADOPT. Important read/write query patterns are declared before indexing/storage choices, preventing speculative schema optimization.
New technology: Semantic Cache Integrity Key (SCIK) — EXPERIMENT. AI/semantic cache identity incorporates tenant visibility, evidence versions, task/prompt/model policy and truth-sensitive dependencies to prevent stale/cross-tenant reuse.

# M19 — Modular Harness, Backend, Jobs & Integration Architecture

Core: bounded contexts, domain services, commands/queries, adapters, jobs, queues, scheduler, event contracts, outbox/inbox, retries, idempotency, rate limiting, circuit breakers, feature flags, capability registry, dependency rules, module health.

New technology: Context-Minimal Execution Harness (CMEH) — ADOPT. Each worker/Codex slice/AI tool receives the smallest sufficient typed context capsule rather than global project/domain state.
New technology: Capability Spine (CS) — ADOPT. Provider-neutral registry exposes verified source/marketplace/ERP/AI capabilities and health to domain modules.
New technology: Work Graph Compiler (WGC) — EXPERIMENT. Compile high-level governed workflows into dependency-aware idempotent job DAGs with explicit evidence inputs/outputs and failure policy.
New technology: Failure Containment Mesh (FCM) — ADOPT. Bulkheads/circuit breakers/dead-letter/retry budgets isolate provider/module failures.
New technology: Contract Drift Gate (CDG) — ADOPT. Contract/schema compatibility checks block unsafe producer/consumer changes.
New technology: Context Budget Compiler (CBC) — EXPERIMENT. Generate Codex/LLM context packs from file ownership, dependency graph and WO acceptance criteria, with token-budget telemetry.

# M20 — Security, Privacy & Secrets

This module establishes foundational controls; M58 later deepens platform-wide trust/resilience architecture and advanced security operations.

Core: identity/authentication, authorization, tenant isolation, secret lifecycle, encryption, session/token handling, service identities, audit events, input/file validation, dependency/supply-chain controls, privacy classification, secure defaults, security testing.

New technology: Commerce Safety Token (CST) — EXPERIMENT. Short-lived internal authorization artifact for a specific consequential command, bound to tenant/actor/action/resource/economic guard/policy version/idempotency context. It never replaces server-side authorization.
New technology: Secret Zero-Exposure Path (SZEP) — ADOPT. Secrets are referenced by opaque handles; logs, AI prompts, client state and evidence capsules receive no secret material.
New technology: Trust Boundary Manifest (TBM) — ADOPT. Machine-readable registry of boundaries, data classes, allowed flows and required guards, usable by tests/static checks.
New technology: Adaptive Action Assurance (AAA) — EXPERIMENT. Consequential actions can require stronger verification based on economic exposure, anomaly/risk and automation mode.
New technology: Security Evidence Graph (SEG) — ADOPT. Link sensitive action -> authn -> authz -> policy -> guard -> audit -> external receipt -> reconciliation for forensic proof.

# M21 — Compliance, Source Policy & Responsible Collection

Core: Source Policy Registry, terms/licensing/robots/API policy evidence, collection method classification, jurisdiction/marketplace restrictions, retention/use restrictions, personal-data flags, category restrictions, certification/review workflow, kill switch, policy versioning.

Rules:
- legitimate access only;
- no fake accounts, identity rotation or quota evasion;
- official API/feed preferred when fit-for-purpose;
- collector capability does not imply permission;
- policy uncertainty can restrict/disable collection;
- legal/compliance interpretation requiring professional advice remains explicitly UNKNOWN/review-required.

New technology: Source Legitimacy Passport (SLP) — ADOPT. Versioned evidence packet records source identity, acquisition method, terms/policy evidence, allowed uses, geography, data classes, rate limits, review date and certification state.
New technology: Policy-Aware Collector Compiler (PACC) — EXPERIMENT. Collector runtime configuration is generated/constrained from the approved Source Legitimacy Passport so prohibited methods/features cannot be enabled casually.
New technology: Compliance Drift Sentinel (CDS-C) — ADOPT. Detect policy/terms/robots/capability evidence changes and downgrade source certification pending review.
New technology: Data Use Purpose Gate (DUPG) — ADOPT. Data class + provenance + tenant purpose determine permitted downstream uses, especially AI/training/export/analytics.

# Cross-module proprietary architecture

## Trust-Aware Context Fabric (TACF) — ADOPT
Every internal context packet combines minimal tenant identity, data classification, provenance, authorization references and contract version. Goal: reduce both security ambiguity and context/token waste.

## Evidence-to-Execution Chain (E2EC) — ADOPT
`evidence -> truth envelope -> decision capsule -> tenant/policy context -> authorization/economic/security guards -> command -> receipt -> reconciliation -> audit`
This becomes a global invariant spanning M01-M21.

## Architecture Fitness Ledger (AFL) — EXPERIMENT
Continuously score architecture constraints using executable fitness functions: cross-tenant violations, forbidden dependencies, contract drift, context size, retry/idempotency defects, secret leakage checks, source-policy drift and replay failures. Scores are diagnostic, never a substitute for blocking critical failures.

## Zero-Trust Data Plane (ZTDP) — ADOPT
Every data access path declares tenant/public scope, purpose, owner, truth class and required authorization instead of trusting network/module location.

# Planned file families
`src/tenancy/*`
`src/authorization/*`
`src/data/contracts/*`
`src/data/lineage/*`
`src/data/migrations/*`
`src/platform/harness/*`
`src/platform/jobs/*`
`src/platform/events/*`
`src/platform/capabilities/*`
`src/platform/resilience/*`
`src/security/*`
`src/compliance/sources/*`
`src/compliance/data-use/*`
`src/contracts/context/*`
`tests/isolation/*`
`tests/architecture/*`
Extensions/runtime technologies remain unresolved until stack ADR/benchmarks.

# Golden cases
1. Tenant A cannot read/write/cache-hit Tenant B private data.
2. Shared public evidence can be reused without leaking tenant-derived fields.
3. Entitlement grants feature availability but insufficient authorization still blocks mutation.
4. Background job retains correct tenant context after retry/dead-letter replay.
5. Outbox/inbox prevents duplicate business effect under at-least-once delivery.
6. Provider outage trips bounded circuit without taking unrelated providers/tenants down.
7. Contract-breaking event change is rejected before deployment.
8. Secret scanning/test confirms no secret enters AI context/evidence capsule/log.
9. Source whose policy certification expires becomes restricted/degraded.
10. Source data cannot be repurposed for a disallowed downstream use.
11. Historical decision remains replayable after schema/model evolution or reports PARTIAL/UNKNOWN honestly.
12. Codex context pack excludes unrelated modules while retaining all required contracts/invariants.

## Batch STOP CONDITION
`M17_M21_PLANNING_BATCH_COMPLETE` requires tenant/isolation model, data planes/ownership, modular harness/dependency rules, security/trust boundaries, source compliance/purpose controls, tests/file maps/Codex contexts and ownership with M58/M63/M65/M68 reconciled, with no HIGH/CRITICAL contradiction.
