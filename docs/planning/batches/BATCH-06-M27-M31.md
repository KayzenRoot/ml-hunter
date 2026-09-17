# Batch 06 — M27-M31 Automation, AI, Release & Market Intelligence

Status: PLAN-IN-PROGRESS
Modules: M27 Notifications & Automation; M28 AI Intelligence, Decision Copilot & Model Router; M29 Release, Migration & Rollout; M30 Final Architecture & Codex Handoff; M31 Market & Competitor Intelligence.

## Mission
Turn trustworthy platform state into timely action, bounded AI assistance, safe rollout and deep market intelligence while preserving deterministic economic truth and minimum-context implementation.

# M27 — Notifications & Automation

Core: event subscriptions, alerts, digests, escalation, automation policies, schedules, cooldown/dedup, acknowledgement, delivery channels, retries, tenant preferences and action proposals. Automation modes MANUAL/ASSISTED/AUTOPILOT remain separate from authorization.

New technology: Economic Attention Router (EAR) — ADOPT. Route/suppress/escalate notifications using urgency, evidence confidence, economic exposure, reversibility and tenant preference.
New technology: Alert Entropy Reducer (AER) — EXPERIMENT. Cluster causally related alerts into one actionable incident/opportunity narrative.
New technology: Automation Intent Capsule (AIC) — ADOPT. Immutable proposal captures trigger, evidence, intended action, policy/guard versions, expiry and required authorization before consequential execution.
New technology: Reversibility-Aware Automation (RAA) — ADOPT. Automation assurance increases as action becomes less reversible or more financially exposed.

# M28 — AI Intelligence, Decision Copilot & Model Router

AI roles: interpret evidence, summarize, classify, entity/match assistance, research orchestration, scenario explanation, recommendation explanation, anomaly interpretation, support/copilot. AI does not own authoritative financial arithmetic, permissions or external mutation authorization.

Provider-neutral AI task contract: task class/version, structured input refs, allowed data/purpose, output schema, quality tier, latency/cost budget, model-policy ref, caching policy, abstention/fallback, evaluation version and trace refs.

New technology: Evidence-Grounded Reasoning Envelope (EGRE) — ADOPT. AI output separates evidence-backed statements, deterministic facts, estimates/inference, unknowns and recommended next evidence.
New technology: Confidence-to-Cost Router (CCR) — ADOPT. Route from deterministic/cheap model upward only when uncertainty and expected decision value justify added cost.
New technology: Hallucination Impact Firewall (HIF) — ADOPT. Claims capable of changing money, identity, compliance or execution require deterministic/evidence verification before downstream consequential use.
New technology: Tool Scope Compiler (TSC) — ADOPT. Compile allowlisted AI tools and data scopes from tenant purpose, task and authorization context.
New technology: Reasoning Cache Graph (RCG) — EXPERIMENT. Cache reusable structured intermediate conclusions by evidence/version dependencies rather than only prompt text.
New technology: AI Counterfactual Critic (ACC) — EXPERIMENT. A bounded critic tests whether a recommendation changes under plausible adverse assumptions; it cannot override deterministic engines.

# M29 — Release, Migration & Rollout

Core: semantic/version policy, release candidates, migration compatibility, feature flags, canary/cohort rollout, rollback/roll-forward, data backfills, provider capability changes, release evidence, tenant impact and post-release verification.

New technology: Economic Canary (EC) — ADOPT. Canary evaluation includes decision/economic/reconciliation deltas, not only errors/latency.
New technology: Migration Shadow Ledger (MSL) — ADOPT. Record before/after counts, checksums/invariants and reconciliation evidence for material data migrations.
New technology: Rollout Blast-Radius Governor (RBG) — ADOPT. Limit tenants/capital/listings/jobs/provider mutations exposed during progressive rollout.
New technology: Behavioral Compatibility Replay (BCR) — EXPERIMENT. Replay representative historical workflows through candidate release to detect semantic decision drift before rollout.

# M30 — Final Architecture & Codex Handoff

This module closes architecture after upstream requirements mature. It does not prematurely choose stack before benchmark/ADR evidence.

Deliverables: system context, bounded contexts, dependency rules, data flow, event map, security architecture, deployment topology, stack ADRs, ownership map, implementation slices, file manifest, traceability, risk register, Codex Context Pack standard and global implementation sequence.

New technology: Implementation Graph Compiler (IGC) — ADOPT. Compile module dependencies, contracts, risk and file ownership into smallest legal implementation slices and sequencing.
New technology: Context Pack Synthesizer (CPS) — ADOPT if CBC benchmark passes; otherwise deterministic manifest-based fallback. Produces exact Codex packet with WO, files, contracts, invariants, tests and STOP CONDITION.
New technology: Architecture Contradiction Scanner (ACS) — EXPERIMENT. Structured cross-check of ownership, dependency, data truth, security, event and policy declarations before code authorization.
New technology: Change Surface Index (CSI) — EXPERIMENT. Estimate implementation blast radius from contract/dependency graph to help size WOs and reviews.

# M31 — Market & Competitor Intelligence

Core: marketplace search intelligence, seller/listing/category snapshots, price distributions, fulfillment/shipping/installment signals where observable, reputation/reviews/questions where permitted, catalog/keyword signals, saturation, demand/liquidity proxies, competition, opportunity gaps, history/replay and my-store-vs-market. Private competitor cost/profit/sales remain estimated or UNKNOWN unless legitimately observed.

New technology: Market Evidence Lattice 2 (MEL2) — ADOPT. Extend M08 evidence into seller/category/keyword/temporal graph with truth/provenance/freshness at every edge.
New technology: Competitor Fingerprint Vector (CFV) — EXPERIMENT. Evidence-derived behavioral profile over category mix, price position, listing quality, fulfillment, assortment change and observable cadence without claiming private intent.
New technology: Opportunity Gap Radar (OGR) — ADOPT. Detect evidence-backed mismatches between demand/liquidity signals, competition, supply availability and economics.
New technology: Market Regime Detector (MRD) — EXPERIMENT. Classify changes in price/competition/demand-signal regimes with confidence and replay validation.
New technology: Reverse Spy Graph (RSG) — ADOPT. Marketplace listing/product -> canonical identity -> Supplier Graph -> acquisition evidence -> economics, preserving uncertainty at each join.
New technology: Double Confirmation Signal (DCS) — EXPERIMENT. Increase research priority when independent Supplier->Marketplace and Marketplace->Supplier discovery paths converge on the same canonical opportunity; never upgrade truth merely because paths agree.

# Cross-module proprietary systems

## Intelligence-to-Action Membrane (IAM) — ADOPT
AI/market intelligence may propose actions across the membrane, but only typed Automation Intent Capsules can cross into deterministic authorization/economic/security execution gates.

## Opportunity Nervous System (ONS) — ADOPT
Connect market/source changes -> affected opportunity/decision/listing -> economic impact -> attention routing -> research/recompute/action proposal. This is the event-driven reflex layer of ML Hunter.

## Model-Evidence Coevolution Loop (MECL) — EXPERIMENT
Realized outcomes and replay/eval results can update task benchmarks/model routing/recommendation experiments, but production promotion remains governed by M23/M29 evidence gates.

## Decision Drift Observatory (DDO) — ADOPT
Compare candidate/current algorithm outputs on identical evidence and separate intended policy evolution from accidental semantic drift.

# Planned file families
`src/automation/*`
`src/notifications/*`
`src/ai/contracts/*`
`src/ai/router/*`
`src/ai/grounding/*`
`src/ai/tools/*`
`src/release/*`
`src/migrations/*`
`src/architecture/implementation-graph/*`
`src/market-intelligence/*`
`src/market-intelligence/competitors/*`
`src/market-intelligence/gaps/*`
`src/contracts/automation/*`
`tests/ai-evals/*`
`tests/release-replay/*`
`tests/market-replay/*`

# Golden cases
1. Ten correlated price alerts collapse into one actionable notification without hiding distinct critical evidence.
2. AUTOPILOT cannot execute an expired or unauthorized Automation Intent Capsule.
3. AI unsupported profit claim is blocked by HIF before consequential use.
4. AI tool cannot access a data purpose/scope absent from compiled tool permissions.
5. Cheap model passes task benchmark -> router does not escalate merely because expensive model exists.
6. Candidate release changes Hunter decisions unexpectedly on identical evidence -> Decision Drift Observatory surfaces it.
7. Migration preserves economic/decision lineage or blocks release.
8. Canary technical health is green but reconciliation/economic behavior regresses -> rollout halts.
9. Competitor private sales/cost remain ESTIMATED/UNKNOWN, never rendered OBSERVED.
10. Reverse Spy identity ambiguity propagates into economics and blocks unsafe purchase.
11. Double Confirmation increases research priority but cannot turn two weak estimates into observed truth.
12. Codex implementation slice excludes unrelated modules and retains every required invariant/test.

## Batch STOP CONDITION
`M27_M31_PLANNING_BATCH_COMPLETE` after notification/automation lifecycle, AI contracts/router/grounding/tool scope, release/migration controls, architecture handoff ownership, market intelligence truth boundaries, file maps/tests/Codex contexts and overlap with M08/M22-M30/M32-M40 are reconciled with no HIGH/CRITICAL contradiction.
