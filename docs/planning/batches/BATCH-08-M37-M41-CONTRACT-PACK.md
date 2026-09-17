# Batch 08 — M37-M41 Contract Pack

Status: PLAN-IN-PROGRESS

## M37 Mobile sourcing contract
ScanObservation preserves raw code/input, capture method, captured_at, local timezone, operator/device session ref, source/store context, offered price/pack/quantity, media refs and sync state. A scan is evidence, not canonical identity.

Scan-to-Economics Capsule links ScanObservation -> identity candidate/resolution -> normalized pack -> source offer -> marketplace snapshot refs -> deterministic economic scenario -> MAX COST -> freshness/unknowns. Any changed dependency invalidates or expires the relevant projection.

Offline states: LOCAL_UNSYNCED, SYNC_PENDING, SYNCED_VALIDATED, SYNC_CONFLICT, REJECTED. Offline evidence cannot silently overwrite fresher server evidence.

Shelf Decision Mode must optimize glanceability but retain truth class/freshness/critical blockers. BUY_TEST is a decision recommendation, not a payment/procurement command.

## M38 Competitor discovery contract
CompetitorCandidate carries seller ref, relation classes, evidence edges, discovery paths, confidence method, first/last observed, freshness, relevance state and research cost. Relevance states: WEAK, ADJACENT, CATEGORY, KEYWORD, DIRECT_CANDIDATE, DIRECT_VERIFIED, STALE, REJECTED.

Direct relevance requires configured evidence criteria; one shared product/keyword cannot automatically establish it. Competitor discovery is temporal and can decay.

Graph expansion has request/token/time/depth/node budgets plus diminishing-evidence-gain stop condition.

## M39 Heat contract
OpportunityHeatTensor preserves independent axes. Suggested canonical axes: MARKET_DEMAND_PROXY, LIQUIDITY_PROXY, COMPETITIVE_PRESSURE, PRICE_STABILITY, SELLER_CONCENTRATION, SOURCE_AVAILABILITY, ACQUISITION_ADVANTAGE, PROFITABILITY, CAPITAL_EFFICIENCY, TIME_TO_CASH, IDENTITY_CONFIDENCE, EVIDENCE_CONFIDENCE, FRESHNESS, OPERATIONAL_FRICTION, POLICY_RISK.

Each axis has value/range, truth/derivation class, evidence refs, calculated_at, validity/freshness and method version. UI projections may aggregate but must expose decomposition.

No universal heat threshold is hard-coded across categories/tenants. Tenant strategy and vertical constraints produce views over the same underlying evidence.

## M40 Anomaly contract
AnomalyObservation: anomaly_id/type/version, subject refs, baseline/window, observed change, method, evidence refs, truth/uncertainty, materiality, detected_at, expiry, hypothesis refs and lifecycle.

Lifecycle: DETECTED -> VALIDATING -> MATERIAL -> ROUTED -> RESOLVED/EXPIRED; exceptional FALSE_POSITIVE, INSUFFICIENT_EVIDENCE, POLICY_BLOCKED.

Detection and causality are separate. Root-cause hypotheses cannot be promoted from temporal correlation alone.

Opportunity Emergence Detector consumes material independent changes and emits a research/opportunity candidate with evidence gaps; it cannot directly issue BUY.

## M41 Vertical/global category contract
VerticalCapabilityPack fields: vertical_id/version, taxonomy mappings, identity attributes, variant rules, unit/pack rules, storage/handling, logistics, return-risk dimensions, compatibility/fitment, expiry/shelf-life, warranty/electrical, regulatory/policy hooks, economic cost components, marketplace/source capability requirements and unsupported/unknown constraints.

Category Constraint Compiler combines VerticalCapabilityPack + tenant policy + source capability + marketplace capability + geography + economic policy into a versioned constraint set.

A vertical pack may specialize validation and economics inputs but cannot replace core tenant, truth, authorization, provenance or financial semantics.

## New technologies deepened

### Visual Pack Consistency Check (VPCC) — EXPERIMENT
Uses packaging text/layout/media/product attributes to detect likely pack/variant mismatch. Output is CONSISTENT_SIGNAL, CONFLICT_SIGNAL or UNKNOWN with evidence; never authoritative identity. Benchmark false-safe rate is more important than raw accuracy because unsafe pack acceptance can corrupt economics.

### Competitive Horizon Expander (CHE) — EXPERIMENT
Graph frontier priority combines relevance evidence, novelty, expected information gain and research cost. Hard budgets and repeated-neighborhood suppression prevent unbounded crawling.

### Opportunity Heat Tensor (OHT) — ADOPT
Tensor projections support product, category, keyword, seller-neighborhood, geography and time slices. Missing axes remain UNKNOWN and cannot be silently normalized to neutral/zero.

### Opportunity Phase Map (OPM) — EXPERIMENT
Analytical phase labels require versioned rules/models and historical replay. They describe observed/derived market regimes, not future outcome predictions.

### Commerce Change Point Engine (CCPE) — ADOPT
Supports rule/statistical detectors with minimum sample/evidence requirements. Seasonality and source-method changes must be distinguishable from genuine market change where possible.

### Weak Signal Constellation (WSC) — EXPERIMENT
Requires signal independence checks/edge provenance to reduce double-counting the same underlying observation through multiple derived features. Output is RESEARCH_TRIGGER only.

### Vertical Capability Pack (VCP) — ADOPT
Pack compatibility is explicit. A workflow asks the pack whether required capabilities are SUPPORTED, PARTIAL, UNSUPPORTED or UNKNOWN. PARTIAL/UNKNOWN may block consequential paths depending on constraint severity.

### Landed Cost Morphology Engine (LCME) — ADOPT
Produces typed deterministic cost components for M09: supplier unit/tier, inbound freight, pickup/travel allocation, taxes/duties where configured, MOQ effects, prep/packaging, payment cost, storage/handling, expected category-specific loss/return allowance and other versioned components. UNKNOWN mandatory components are not zero.

### Category Portability Score (CPS) — EXPERIMENT
Measures contract coverage, known constraints, identity fit, economics coverage, source/market capabilities, test coverage and unresolved unknowns for a new vertical. It is readiness evidence, not a marketing score.

## Technology governance records
All experimental technologies require: baseline, corpus/workload, measurable benefit, cost/complexity, failure modes, promotion threshold and rollback/removal path. No EXPERIMENT becomes a hard dependency before evidence-based ADOPT decision.

## Cross-module ownership
- M37 consumes M05 identity, M07 source price, M08/M31 market evidence and M09 economics.
- M38 consumes M31/M33/M34/M36 evidence and owns competitor-set discovery only.
- M39 owns heat representation/projections; M10 owns final decision ranking/actions.
- M40 owns change/anomaly/emergence detection; M22 owns reliability anomalies and M70 later owns returns/recovery domain workflows.
- M41 owns universal vertical/category extension contract; individual later domain modules may add vertical packs but cannot fork core semantics.

## Codex context packs
M37: scan/mobile contracts + identity + price + market + economics + offline sync + UX safety.
M38: market graph/search/storefront contracts + compliance + research budgets.
M39: market/economics/evidence dimensions + tenant strategy + explainability tests.
M40: temporal history + observability + market/source/economic evidence + causality guard.
M41: universal core contracts + vertical pack + category constraint + landed-cost extension + policy.

## Acceptance evidence families
Barcode ambiguity/pack mismatch; offline stale/conflict; MAX COST provenance; competitor weak/direct transitions; expansion budget termination; heat unknown-axis/decomposition; anomaly source-method-change false-positive; weak-signal double-counting; category pack unsupported/partial; landed-cost unknown component; vertical replay/versioning; category portability benchmark.
