# Batch 06 — M27-M31 Contract Pack

Status: PLAN-IN-PROGRESS

## M27 Automation lifecycle
AutomationProposal states: DETECTED -> PROPOSED -> VALIDATING -> READY -> AUTHORIZED -> EXECUTING -> RECONCILING -> COMPLETED. Exceptional states: EXPIRED, BLOCKED, REJECTED, FAILED, UNKNOWN_OUTCOME, CANCELLED.

Automation Intent Capsule fields: intent_id/version, tenant/context refs, trigger/evidence refs, proposed action and typed parameters, economic exposure, reversibility class, confidence/truth refs, policy/guard versions, created/expires timestamps, required assurance, authorization state and execution receipt refs.

Invariants: notification acknowledgement is not authorization; automation mode is not permission; expired evidence/intent cannot execute; UNKNOWN_OUTCOME reconciles before retry; dedup/cooldown cannot suppress a distinct CRITICAL condition.

## M28 AI task and grounding contract
AI task envelope: task_id/version, tenant context ref, purpose, task_class, structured evidence refs, allowed tools/data classes, required output schema, model-policy ref, cost/latency budget, cache policy, grounding requirements, abstention/fallback rules and eval version.

Output claim classes: DETERMINISTIC_REF, EVIDENCE_BACKED, MODEL_INFERENCE, ESTIMATE, UNKNOWN. Claims with financial/identity/compliance/execution impact require verification route before consequential use.

AI may produce narrative and structured proposals; authoritative money remains M09, authorization M17/M20, source permission M21 and mutations M12/M13/M27 guards.

## M29 Release contract
Release candidate carries exact revision/artifact refs, migrations, contract compatibility result, EBRG evidence, affected capabilities, rollout policy, blast-radius budget, rollback/forward plan and post-release verification.

Progressive states: BUILT -> EVIDENCE_READY -> APPROVED -> CANARY -> COHORT -> GENERAL. Any stage may HALT, ROLLBACK or ROLL_FORWARD under policy.

Economic Canary compares candidate/current on identical evidence for unexpected decision, reconciliation, listing or financial-semantic deltas.

## M30 Architecture/Codex handoff contract
Global implementation graph nodes contain module/contract ownership, prerequisite nodes, file manifest, risk, tests, migration needs, acceptance criteria and STOP CONDITION. Cycles require architecture resolution before implementation sequencing.

Codex Context Pack must declare INCLUDED, EXCLUDED, REQUIRED_UNKNOWN and CONTEXT_BUDGET. Missing mandatory contract is a pack-build failure, not permission for Codex to infer it from general chat history.

Implementation slice statuses: PLANNED, READY, IN_PROGRESS, REVIEW, VERIFIED, BLOCKED. READY requires prerequisites and architecture decisions resolved for that slice.

## M31 Market intelligence contract
MarketEvidenceNode: marketplace, entity type/ref, observation/derivation, truth class, confidence method, provenance, observed/calculated time, freshness, category/keyword/seller/listing/product relations and capability source.

Private competitor values such as true cost, private sales volume, private ad spend and net profit are never OBSERVED unless a legitimate source actually exposes them. Estimates expose method/range/limitations.

M08 owns marketplace acquisition/capability evidence primitives. M31 owns higher-order cross-entity market/competitor analysis, temporal intelligence and opportunity-gap products. M31 consumes M08 rather than duplicating its adapters.

## New technologies deepened

### Economic Attention Router (EAR) — ADOPT
Priority vector retains independent dimensions: severity, urgency, economic exposure, confidence, reversibility, freshness and tenant preference. A scalar sort key may be derived but dimensions remain explainable.

### Alert Entropy Reducer (AER) — EXPERIMENT
Clusters alerts by causal/evidence graph and time window. Benchmark alert volume reduction, missed distinct incidents, time-to-action and operator corrections.

### Hallucination Impact Firewall (HIF) — ADOPT
Routes consequential AI claims to deterministic/evidence verification. If verification unavailable, result remains UNKNOWN/REVIEW rather than accepted from model confidence.

### Confidence-to-Cost Router (CCR) — ADOPT
Uses M23 task benchmarks + M25 Model Frugality Frontier/budgets. Escalation is task-specific and evidence-driven; model self-reported confidence alone is insufficient.

### Reasoning Cache Graph (RCG) — EXPERIMENT
Cache key/dependencies include task version, evidence versions, tenant/data-purpose scope, model/prompt policy and structured output contract. Dependency invalidation prevents stale reasoning reuse.

### Implementation Graph Compiler (IGC) — ADOPT
Compiles dependency DAG into implementation slices targeting low coupling, bounded review surface and parallelizable work. Benchmark planned-vs-actual touched files, rework, Codex tokens and acceptance failures.

### Architecture Contradiction Scanner (ACS) — EXPERIMENT
Checks structured declarations for multiple authoritative writers, forbidden dependencies, tenant/truth-policy mismatches, duplicate ownership, event cycles and unresolved critical UNKNOWNs. Findings require human/governed resolution; scanner does not silently rewrite architecture.

### Reverse Spy Graph (RSG) — ADOPT
Every marketplace->identity->supplier->economics edge retains evidence/truth/freshness. Ambiguous identity fans out candidates or blocks economics according to policy; it never silently selects the most profitable match.

### Opportunity Gap Radar (OGR) — ADOPT
Gap candidates require independent evidence dimensions such as demand/liquidity proxy, competitive pressure, source availability and economic feasibility. Missing critical dimensions produce RESEARCH rather than BUY.

## Cross-module decision membrane
Only Automation Intent Capsule can carry AI/market proposals toward consequential execution. Capsule is not authorization. It must pass tenant, permission, entitlement, purpose, financial, security, freshness and external-capability guards before command creation.

## Codex file families
`src/automation/domain/automation-intent.*`
`src/automation/services/economic-attention-router.*`
`src/ai/contracts/ai-task-envelope.*`
`src/ai/grounding/evidence-grounded-envelope.*`
`src/ai/grounding/hallucination-impact-firewall.*`
`src/ai/router/confidence-to-cost-router.*`
`src/ai/tools/tool-scope-compiler.*`
`src/release/domain/release-candidate.*`
`src/release/canary/economic-canary.*`
`src/release/rollout/blast-radius-governor.*`
`src/architecture/implementation-graph/compiler.*`
`src/architecture/context-pack/synthesizer.*`
`src/market-intelligence/domain/market-evidence-node.*`
`src/market-intelligence/reverse-spy/*`
`src/market-intelligence/opportunity-gap/*`

## Acceptance evidence families
Automation lifecycle/idempotency/reconciliation; notification dedup critical-case tests; AI grounding/claim classification/tool-scope tests; model routing benchmark; prompt-injection/untrusted-market-text tests; release replay/economic canary; migration lineage; architecture graph validation; context-pack token benchmark; market truth-boundary tests; reverse-spy ambiguity tests; historical market replay.
