# Batch 05 — M22-M26 Quality, Evaluation, Cost & Platform Operations

Status: PLAN-IN-PROGRESS
Modules: M22 Reliability, Observability & Data Quality; M23 Testing, Evaluation & Benchmarking; M24 Zero-Cost Infrastructure & Deployment; M25 Performance, Quotas & FinOps; M26 Platform Admin Control Center.

## Mission
Make ML Hunter measurable, testable, cheap to operate initially and diagnosable as it scales. Convert architectural promises into observable evidence and release gates.

# M22 Reliability, Observability & Data Quality

Core signals: traces, metrics, structured logs, domain/business telemetry, source/integration health, job health, data freshness, evidence coverage, decision quality indicators, reconciliation drift, tenant impact and cost signals.

Rules: observability never leaks secrets/sensitive tenant payloads; UNKNOWN/degraded dependencies are visible; SLOs are tied to user/business journeys rather than only infrastructure uptime; data quality is first-class.

New technology: Decision Observability Graph (DOG) — ADOPT. Trace an opportunity from source evidence through identity, economics, Hunter decision, procurement/listing and realized outcome using correlation/lineage refs.
New technology: Evidence Freshness SLO (EFS) — ADOPT. Reliability objectives can target freshness/coverage of economically important evidence, not merely HTTP availability.
New technology: Profit-Sensitive Alerting (PSA) — EXPERIMENT. Alert priority combines technical severity with estimated economic exposure and reversibility.
New technology: Silent Failure Detector (SFD) — ADOPT. Detect pipelines that are technically green but stopped producing expected evidence/decisions/receipts.
New technology: Observability Cost Governor (OCG) — EXPERIMENT. Dynamically retain/sample telemetry based on incident value, audit need and cost while preserving required security/economic evidence.

# M23 Testing, Evaluation & Benchmarking

Test layers: unit/property, contract, integration, adapter sandbox/replay, tenant isolation, security, migration/recovery, job/idempotency, end-to-end journeys, financial golden cases, data-quality tests, AI evals, performance/load, architecture fitness, chaos/fault injection.

New technology: Economic Golden Corpus (EGC) — ADOPT. Versioned real/synthetic sanitized cases for profit/MAX COST/ROI/time-to-cash/uncertainty/reconciliation.
New technology: Decision Replay Arena (DRA) — ADOPT. Replay historical evidence against candidate algorithms while preserving what was knowable at that time.
New technology: Shadow Decision Tournament (SDT) — EXPERIMENT. Multiple Hunter/AI/ranking variants produce non-executing shadow decisions; compare quality/cost/latency/regret proxies before promotion.
New technology: Mutation Safety Simulator (MSS) — ADOPT. Validate consequential commerce commands against deterministic fake/sandbox state machines before live execution paths are enabled.
New technology: Evidence Mutation Testing (EMT) — EXPERIMENT. Deliberately corrupt freshness/truth/pack/tenant/cost evidence to ensure guards fail safely.

# M24 Zero-Cost Infrastructure & Deployment

Goal: near-zero incremental infrastructure cost during early use without embedding a permanently fragile architecture. Deployment profiles may begin single-node/local/free-tier while preserving interfaces for managed scale-out.

Plan: containerized reproducible environments; configuration/secrets separation; migration jobs; health/readiness; backups; restore evidence; deployment manifest; environment promotion; preview/test environments where cost allows; infrastructure capability abstraction.

New technology: Elastic Deployment Profile (EDP) — ADOPT. Same bounded contexts expose profiles LOCAL, ZERO_COST, SMALL_MANAGED, SCALE without changing domain contracts.
New technology: Costless-First Placement Planner (CFPP) — EXPERIMENT. Select workload placement using cost ceiling, latency, persistence, reliability and hardware capability.
New technology: Degradation-First Deployment (DFD) — ADOPT. Explicitly define what remains available when AI/provider/search/cache/background capacity is absent.
New technology: Restore Proof Receipt (RPR) — ADOPT. Backup existence is not enough; periodic restore test emits evidence of recoverability.

# M25 Performance, Quotas & FinOps

Budgets: API/provider quota, AI tokens/cost, collector requests, jobs/concurrency, database/storage, cache, telemetry, bandwidth, tenant resource use. Budgets can be hard/soft and scoped per tenant/provider/task/time window.

New technology: Value-per-Compute Scheduler (VCS) — EXPERIMENT. Prioritize work using expected economic/evidence value divided by compute/API/AI cost and latency.
New technology: Token Return on Investment (TROI) — EXPERIMENT. Measure whether additional LLM tokens/model tier materially improve task/economic decision quality.
New technology: Adaptive Model Escalation Ladder (AMEL) — ADOPT. Start with cheapest adequate deterministic/no-LLM or model tier, escalate only when task confidence/eval policy justifies it.
New technology: Quota Futures Ledger (QFL) — EXPERIMENT. Reserve scarce provider quota for economically important scheduled work rather than first-come exhaustion.
New technology: Cost Attribution Envelope (CAE) — ADOPT. Attribute API/AI/storage/compute/telemetry cost to tenant, capability, workflow and decision where feasible.

# M26 Platform Admin Control Center

Platform-only control plane: tenants/users/workspaces, plans/entitlement refs, source registry/certification, integrations/capabilities, AI/provider use, quotas/cost, jobs/errors, reconciliation drift, security/audit, feature flags, support diagnostics, suspension/restriction, deployment/health and platform economics.

Rules: admin actions separately authorized/audited; impersonation/support access is explicit, time-bounded and visible/audited; platform admin cannot casually read tenant-sensitive business data; dangerous bulk actions require blast-radius controls.

New technology: Platform Nerve Center (PNC) — ADOPT. Unified operational read model linking tenant impact, system health, cost and active incidents without making the admin UI a direct database browser.
New technology: Admin Action Blast-Radius Preview (AABP) — ADOPT. Before consequential bulk/platform change, calculate affected tenants/workflows/providers and require policy-appropriate confirmation.
New technology: Safe Support Lens (SSL) — ADOPT. Diagnostics expose minimum necessary metadata and redacted evidence before privileged tenant-data access is considered.
New technology: Operational Time Machine (OTM) — EXPERIMENT. Reconstruct platform configuration/feature/source/provider state around an incident from versioned control-plane events.

# Cross-module technologies

## Reliability-Economics Fusion Layer (REFL) — ADOPT
Maps technical degradation to affected economic capabilities: e.g. source stale -> opportunities relying on source degraded -> decisions blocked/research -> affected capital/listings surfaced. Prevents green-infrastructure dashboards from hiding business failure.

## Evidence-Based Release Gate (EBRG) — ADOPT
Release acceptance consumes machine evidence from tests, security, migrations, restore proof, performance budgets, contract compatibility, data quality and required SLO readiness. Missing required evidence = UNKNOWN/BLOCK, never PASS.

## Cost-to-Value Telemetry (CVT) — ADOPT
Connect resource consumption to useful outputs: evidence acquired, decisions produced, opportunities accepted, reconciliations completed and realized outcomes when available. It must not claim causal profit attribution without evidence.

## Autonomous Optimization Sandbox (AOS) — EXPERIMENT
Candidate schedulers/model routes/cache/collector policies run in replay/shadow mode against recorded workloads before live promotion.

# Planned file families
`src/observability/*`
`src/data-quality/*`
`src/testing/golden/*`
`src/testing/replay/*`
`src/testing/simulation/*`
`src/platform/deployment/*`
`src/platform/recovery/*`
`src/platform/finops/*`
`src/platform/quotas/*`
`src/ai/routing/*`
`src/admin/*`
`src/contracts/release-evidence/*`
`tests/performance/*`
`tests/recovery/*`
`tests/e2e/*`

# Golden cases
1. Source API healthy but no new observations -> Silent Failure Detector alerts.
2. Stale evidence propagates to affected decisions and blocks consequential action.
3. Expensive model does not improve benchmark -> AMEL remains on cheaper tier.
4. Provider quota nearly exhausted -> economically low-value jobs defer before critical refresh jobs.
5. Backup succeeds but restore fails -> release/continuity evidence is NOT PASS.
6. Telemetry sampling never removes mandatory security/economic audit evidence.
7. Admin bulk source-disable previews affected tenants/workflows before execution.
8. Support operator cannot access tenant-sensitive payload through ordinary diagnostics.
9. Historical algorithm evaluated only against evidence available at historical decision time.
10. Corrupted pack identity in Evidence Mutation Test activates financial guard.
11. ZERO_COST deployment loses optional AI provider and deterministic core continues safely.
12. Cost attribution distinguishes tenant/workflow/provider without exposing tenant data across boundaries.

## Batch STOP CONDITION
`M22_M26_PLANNING_BATCH_COMPLETE` after SLO/data-quality contracts, complete test/eval matrix, deployment/recovery profiles, quota/FinOps/model-routing policies, admin security/read models, file maps and Codex contexts reconcile with M01-M21 and later ownership boundaries, with no HIGH/CRITICAL contradiction.
