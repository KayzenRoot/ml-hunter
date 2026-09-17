# Batch 02 — M07-M11 Economic Intelligence

Status: PLAN-IN-PROGRESS
Modules: M07 Local Price Intelligence; M08 Mercado Livre Market & Demand Intelligence; M09 Profit Margin & Opportunity Engine; M10 Ranking Hunter & Decision Engine; M11 Procurement & Inventory Workflow.

## Batch mission
Transform acquisition evidence into economically safe, explainable and capital-aware actions. The batch owns the bridge from observed source/market evidence to buy/no-buy/quantity/procurement decisions.

## Canonical flow
`Acquisition Evidence Capsule -> Price Intelligence -> Marketplace Intelligence -> Economic Scenario -> Profit Engine -> Hunter Decision -> Procurement Plan -> Inventory Position -> realized outcome feedback`

# M07 — Local Price Intelligence

## Core capabilities
Normalize supplier offers into comparable unit/pack economics; preserve normal/promotional/quantity-tier prices; maintain price history; detect anomalies; compute acquisition freshness and price confidence; compare local/online acquisition paths; feed landed-cost calculations without pretending taxes/logistics are already known.

## New technologies
### Price Truth Ledger (PTL) — ADOPT
Append-oriented price observations with provenance, tier, location, pack identity and validity. Corrections supersede rather than erase historical evidence.

### Price Morphology Engine (PME) — EXPERIMENT
Learns source/product price behavior shapes such as stable, promotion pulse, wholesale staircase, seasonal, suspicious spike/drop, helping schedule refresh and reject bad observations.

### Effective Unit Cost Compiler (EUCC) — ADOPT
Compiles pack/tier/MOQ/discount evidence into comparable acquisition-unit scenarios without losing original offer structure.

### Price Shock Sentinel (PSS) — ADOPT
Blocks/quarantines economically implausible price changes until corroborated or reviewed.

# M08 — Mercado Livre Market & Demand Intelligence

## Core capabilities
Marketplace adapter/capability discovery; category/product/listing/seller observations; price distribution; competition; catalog context; observable demand/liquidity signals; historical snapshots; freshness/provenance; API quota/cost controls. No private competitor facts may be fabricated.

## New technologies
### Market Evidence Lattice (MEL) — ADOPT
Unifies heterogeneous observable market signals while retaining their truth class, time horizon and provenance.

### Demand Evidence Fusion (DEF) — EXPERIMENT
Combines multiple legitimate weak demand/liquidity indicators into calibrated ranges rather than a fake exact sales number.

### Competitive Pressure Field (CPF) — EXPERIMENT
Models competitive intensity as a multidimensional field across price, seller concentration, listing quality, fulfillment, reputation, catalog position and observed change velocity.

### Market Replay Kernel (MRK) — ADOPT
Versioned snapshots enable historical replay: what would Hunter have known and recommended at time T?

### Capability Negotiation Layer (CNL) — ADOPT
Runtime knows which marketplace observations/actions are VERIFIED/available and degrades gracefully when a capability is absent.

# M09 — Profit, Margin & Opportunity Engine

## Core capabilities
Deterministic scenario calculation for acquisition, marketplace fees, fixed costs, taxes supplied/configured, packaging, logistics, advertising allowance, returns/loss allowance, payment effects, contribution/net profit definitions, margin, ROI, break-even, capital required, MAX COST and sensitivity. Every formula/version must be auditable.

## New technologies
### Economic Truth Kernel (ETK) — ADOPT
Pure/versioned deterministic financial calculation core isolated from AI and external provider payloads.

### Profit Uncertainty Envelope (PUE) — ADOPT
Propagates uncertain costs/prices into scenario ranges and identifies variables capable of flipping BUY/NO-BUY economics.

### Margin Fragility Index (MFI) — EXPERIMENT
Measures how easily an opportunity loses acceptability under plausible adverse changes.

### MAX COST Compiler (MCC) — ADOPT
Solves backward from tenant constraints to maximum safe acquisition cost.

### Profit Breaker Map (PBM) — EXPERIMENT
Ranks the smallest market/cost changes that would invalidate the opportunity, improving explanations and alerts.

# M10 — Ranking, Hunter & Decision Engine

## Core capabilities
Turn evidence/economics into ranked opportunities and next actions. Score must be explainable, versioned and tenant-policy aware. It considers profit, ROI, margin, demand/liquidity evidence, competition, confidence, freshness, capital, time-to-cash, risk and strategic fit. AI may explain, not secretly determine hard financial truth.

## New technologies
### Hunter Decision Graph (HDG) — ADOPT
Represents why an opportunity reached a recommendation using evidence/calculation/policy nodes instead of an opaque scalar alone.

### Opportunity Confidence Surface (OCS) — EXPERIMENT
Maps economic attractiveness against evidence confidence and identifies opportunities worth further research before rejection/approval.

### Decision Regret Simulator (DRS) — EXPERIMENT
Compares expected regret of BUY, WAIT, RESEARCH, SKIP under uncertainty and capital constraints.

### Opportunity Decay Clock (ODC) — ADOPT
Estimates when evidence/opportunity should be re-evaluated due to price validity, competition changes, freshness or stock conditions.

### Next Evidence Action (NEA) — EXPERIMENT
When recommendation is blocked by uncertainty, requests the cheapest evidence most likely to change the decision, integrating the Evidence Economy Scheduler.

# M11 — Procurement & Inventory Workflow

## Core capabilities
Convert approved opportunity into procurement intent, planned quantity, capital reservation, supplier/store path, purchase evidence, received quantity/cost, inventory lots and discrepancies. Support manual-first workflow and future integrations/automation. Preserve actual acquisition economics for realized-vs-projected learning.

## New technologies
### Capital Reservation Ledger (CRL) — ADOPT
Prevents multiple opportunities from silently spending the same available capital.

### Procurement Evidence Packet (PEP) — ADOPT
Carries approved source, max cost, quantity bounds, expiry/freshness requirements where applicable, expected economics and decision evidence into purchase execution.

### Buy Window Engine (BWE) — EXPERIMENT
Estimates when to buy now/wait/recheck based on promotion validity, opportunity decay, stock/demand and capital opportunity cost.

### Quantity Safety Envelope (QSE) — ADOPT
Defines min/test/target/max purchase quantity from capital, MOQ, expected rotation, risk and storage constraints.

### Inventory Truth Reconciler (ITR) — ADOPT
Separates expected, purchased, received, available, reserved, listed and sold quantities and reconciles discrepancies.

# Cross-module proprietary systems

## Economic Decision Capsule (EDC) — ADOPT
Immutable/versioned decision snapshot joining Acquisition Evidence Capsule, market evidence, deterministic economics, uncertainty, tenant policy and recommendation rationale. Used for audit, Market Replay and realized-vs-projected comparison.

## Research-to-Profit Loop (RPL) — EXPERIMENT
Closed loop asks whether spending another API call/collector run/AI step has enough expected economic value to justify delaying a decision.

## Capital-Aware Opportunity Queue (CAOQ) — ADOPT
Ranking is constrained by actual/reserved capital, not merely opportunity score. Prevents a dashboard full of individually attractive but jointly impossible buys.

## Economic Circuit Breaker (ECB) — ADOPT
If critical inputs become stale, contradictory or outside policy, consequential recommendation/procurement progression stops safely until recomputation/reconciliation.

## Planned code families
`src/pricing/*`
`src/marketplace/intelligence/*`
`src/economics/*`
`src/hunter/*`
`src/procurement/*`
`src/inventory/*`
`src/contracts/economic-decision/*`

## Golden cases to formalize
- wholesale tier cheaper but MOQ makes capital/rotation unattractive;
- marketplace price appears profitable until fee/logistics/return allowance is included;
- high ROI but slow time-to-cash loses to lower ROI faster rotation under constrained capital;
- ambiguous identity causes decision to request evidence rather than buy;
- stale supplier price triggers economic circuit breaker;
- MAX COST allows physical-store scan to instantly show safe purchase ceiling;
- two attractive opportunities compete for same capital and queue selects feasible portfolio;
- actual received cost differs from projected and becomes learning/reconciliation evidence.

## Batch STOP CONDITION
`M07_M11_PLANNING_BATCH_COMPLETE` after module contracts, formula ownership, evidence boundaries, tests, file maps, security/automation constraints and Codex context packs reconcile with M02-M06 and no HIGH/CRITICAL planning contradiction remains.
