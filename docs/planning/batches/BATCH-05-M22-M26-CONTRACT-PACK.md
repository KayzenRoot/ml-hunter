# Batch 05 — M22-M26 Contract Pack

Status: PLAN-IN-PROGRESS

## M22 Reliability contract
Reliability is measured across technical and economic journeys. Canonical journey classes: ACQUIRE_EVIDENCE, BUILD_MARKET_VIEW, CALCULATE_ECONOMICS, PRODUCE_DECISION, EXECUTE_COMMERCE_COMMAND, RECONCILE_EXTERNAL_STATE, REALIZE_ECONOMICS.

Each journey declares availability, latency, freshness/coverage, correctness/reconciliation and degradation objectives where meaningful. Missing fresh evidence may make a journey unavailable even when HTTP infrastructure is healthy.

Data quality dimensions: freshness, completeness, validity, consistency, identity confidence, provenance coverage, reconciliation state and truth-class integrity.

Decision Observability Graph links correlation/causation IDs plus immutable evidence/decision/receipt refs. It must not duplicate sensitive payloads merely for tracing.

## M23 Test/evaluation contract
Every critical invariant maps to at least one executable evidence family. Financial truth uses deterministic golden/property cases. Tenant isolation uses adversarial fixtures. External adapters use contract/sanitized replay/sandbox evidence. AI components use task-specific eval sets with deterministic fallback/abstention expectations.

Benchmark record: benchmark_id/version, candidate, baseline, corpus version, environment, quality metrics, latency, token/API/compute cost, failures, confidence/limitations, decision ADOPT/EXPERIMENT/REJECT.

No algorithm/model is promoted from a single anecdotal case.

Decision Replay Arena obeys historical knowledge boundary: only evidence available by the replay cutoff is admissible.

## M24 Deployment/recovery contract
Deployment profiles: LOCAL, ZERO_COST, SMALL_MANAGED, SCALE. Profiles alter placement/capacity/managed services, not domain semantics.

Every profile declares persistence, network exposure, secrets boundary, job execution, backups, restore procedure, health/readiness, resource ceilings and optional/degraded capabilities.

Recovery evidence includes backup creation, integrity, restore execution, restored version, verification queries/tests, elapsed time and unresolved gaps. Backup without restore proof is UNKNOWN for recoverability.

## M25 Budget/FinOps contract
Budget dimensions: MONEY, TOKENS, API_REQUESTS, PROVIDER_QUOTA, COMPUTE_TIME, CONCURRENCY, STORAGE, BANDWIDTH, TELEMETRY. Scope: PLATFORM, TENANT, PROVIDER, CAPABILITY, WORKFLOW, TASK.

Budget policy actions: ALLOW, WARN, DEFER, DEGRADE, ESCALATE_REVIEW, BLOCK. Consequential refresh/work may reserve quota before execution.

Adaptive Model Escalation Ladder chooses deterministic/no-model first where sufficient, then cheapest benchmark-approved tier; escalation requires policy signal such as low confidence, task complexity or eval evidence. Expensive model is never selected only because it is more capable in general.

Token ROI compares incremental quality/economic-decision value to incremental token/cost/latency. It is an evaluation metric, not authoritative financial ROI.

## M26 Admin contract
Admin control plane consumes sanitized operational read models. Direct arbitrary tenant-database browsing is not a normal admin feature.

Admin action envelope: actor, platform role, action, target scope, reason, requested_at, blast-radius preview, required approval/assurance, idempotency, execution receipt and audit refs.

Support access levels: METADATA_ONLY, REDACTED_DIAGNOSTICS, TEMPORARY_TENANT_SUPPORT_SCOPE. Higher access is explicit, time-bound, attributable and audited.

## New proprietary technologies

### SLO Economic Weighting (SEW) — EXPERIMENT
Problem: identical technical failures can have radically different business impact.
Mechanism: map journey/SLO violation to affected decision count, evidence criticality, capital/listing exposure and reversibility.
Risk: estimated economic impact may create false precision.
Guard: display evidence class/range; technical severity remains visible independently.
Benchmark: incident triage time and missed high-impact incidents versus conventional severity-only ordering.

### Golden Invariant Compiler (GIC) — EXPERIMENT
Problem: architecture/docs contain invariants that drift away from tests.
Mechanism: structured invariant registry generates/validates test obligations and release evidence references.
Benefit: fewer undocumented untested guarantees; smaller Codex context because invariants become machine-addressable.
Risk: badly structured invariants create superficial generated tests.
Promotion: seeded invariant violations must be caught with low false confidence.

### Model Frugality Frontier (MFF) — ADOPT
Maintain benchmark frontier of models/configurations that are not dominated simultaneously on quality, latency and cost for each ML Hunter task class. Router chooses only from approved frontier unless experiment mode.

### Quota Shadow Price (QSP) — EXPERIMENT
Estimate scarcity value of a provider request/token near quota exhaustion to help VCS defer low-value work. This is an internal scheduling heuristic, never an accounting price.

### Admin Counterfactual Preview (ACP) — EXPERIMENT
Replay intended admin policy/feature/source change against current dependency graph/read models to estimate affected workflows before mutation.

### Operational Evidence Capsule (OEC) — ADOPT
Compact incident/support/release diagnostic packet: versions, health, SLO breaches, affected capabilities, relevant sanitized traces/metrics, cost/quota state, recent config changes and evidence refs. No secrets or unnecessary tenant payloads.

## Codex context rules
M22 implementation slice receives observability contracts + owning domain correlation contracts, not full product docs. M23 receives invariant/test registry and targeted contracts. M24 receives deployment/recovery contracts and stack ADR. M25 receives budget/model eval contracts. M26 receives admin/security/read-model contracts. Cross-cutting changes require explicit multi-module WO.

## Release gate evidence
Required evidence categories are versioned and severity-aware: tests, financial golden cases, isolation/security, contracts, migrations, restore proof, performance budgets, AI evals when AI behavior changed, source policy when collection changed, data-quality readiness, observability readiness. Missing mandatory evidence is UNKNOWN/BLOCK.
