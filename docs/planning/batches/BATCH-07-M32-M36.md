# Batch 07 — M32-M36 Discovery, Graph, Search & Temporal Intelligence

Status: PLAN-IN-PROGRESS
Modules: M32 Product & Niche Discovery Engine; M33 Marketplace Graph Intelligence; M34 Search & Keyword Intelligence; M35 Historical Intelligence / Hunter Timeline; M36 Storefront Reverse Engineering.

## Mission
Expand ML Hunter from evaluating known products into systematically discovering categories, niches, products, sellers and search spaces worth investigating, while preserving evidence lineage, uncertainty and cost-aware exploration.

# M32 — Product & Niche Discovery Engine

Discovery directions: supplier-first, marketplace-first, category-first, keyword-first, seller-first, trend/change-first and portfolio-gap-first. Discovery produces candidates, not purchase truth.

Candidate lifecycle: DISCOVERED -> EVIDENCE_REQUIRED -> QUALIFYING -> QUALIFIED -> ECONOMIC_ANALYSIS -> DECISION_READY. Exceptional: DUPLICATE, LOW_EVIDENCE, POLICY_BLOCKED, EXPIRED, REJECTED.

New technology: Opportunity Seed Generator (OSG) — ADOPT. Provider-neutral generators emit typed seeds with discovery path, evidence refs and estimated research cost.
New technology: Exploration Portfolio Engine (EPE) — EXPERIMENT. Allocate research budget across known-good exploitation and novel category/niche exploration while respecting capital/data/API budgets.
New technology: Niche Friction Index (NFI) — EXPERIMENT. Represent observable barriers such as competition density, identity ambiguity, fulfillment complexity, returns/reputation risk and sourcing difficulty without pretending to measure private competitor capability.
New technology: Evidence Gain Planner (EGP) — ADOPT. Select the next cheapest/highest-value evidence action required to qualify or reject a candidate.
New technology: Discovery Diversity Guard (DDG) — ADOPT. Prevent ranking feedback loops from collapsing all exploration into one category/source/seller pattern.

# M33 — Marketplace Graph Intelligence

Graph entities: canonical products, listings, sellers, brands, categories, keywords, catalog entities, fulfillment modes, price observations, reviews/questions signals where permitted, supplier links, opportunities and temporal snapshots.

Edges are typed, versioned and evidence-backed. Graph relation does not imply causality.

New technology: Temporal Commerce Knowledge Graph (TCKG) — ADOPT. Every material node/edge can carry valid-time/observed-time/provenance/truth metadata for historical replay.
New technology: Edge Confidence Algebra (ECA) — ADOPT. Combine/propagate evidence confidence under explicit rules without converting agreement into observation.
New technology: Graph Contradiction Resolver (GCR) — EXPERIMENT. Detect incompatible identity/category/seller/product relations and route them to evidence acquisition rather than silently choosing one.
New technology: Opportunity Neighborhood Search (ONS-G) — EXPERIMENT. Explore graph neighborhoods around profitable/interesting products to discover adjacent products/brands/categories/suppliers under diversity and cost constraints.

# M34 — Search & Keyword Intelligence

Core: query/keyword observations, search-result snapshots, rank/position when legitimately observable, category/brand/product associations, autocomplete/suggestion capabilities where legitimately available, listing-title token patterns, demand/competition proxies, temporal change and query-to-opportunity links.

New technology: Search Intent Evidence Graph (SIEG) — ADOPT. Link keyword/query -> observable result set -> products/categories/sellers -> market evidence -> opportunity candidates.
New technology: Query Opportunity Compiler (QOC) — ADOPT. Convert search evidence into typed research hypotheses, never direct BUY decisions.
New technology: Semantic Demand Clusterer (SDC) — EXPERIMENT. Group related queries using lexical/semantic evidence while preserving original observations and avoiding fabricated search volume.
New technology: Keyword Drift Radar (KDR) — EXPERIMENT. Detect changes in terminology/result composition/category association over time.
New technology: Zero-Volume Honesty Rule (ZVHR) — ADOPT. Absence of a legitimate search-volume source remains UNKNOWN; result count/rank/autocomplete cannot be mislabeled as exact search volume.

# M35 — Historical Intelligence / Hunter Timeline

Core timeline events: source price, marketplace price, listing state, seller/category/search observations, identity revisions, opportunity scores/decisions, procurement, inventory, listing actions, orders, settlements, realized economics, policy/config/model/algorithm versions and incidents affecting interpretation.

New technology: Bitemporal Hunter Timeline (BHT) — ADOPT. Distinguish when something was true/observed from when ML Hunter learned/recorded it, enabling honest late-arriving evidence and replay.
New technology: Decision Memory Capsule (DMC) — ADOPT. Compact immutable reconstruction anchor for why a decision existed at a point in time.
New technology: Counterfactual Timeline Lab (CTL) — EXPERIMENT. Replay alternative policy/algorithm choices using only historically admissible evidence and explicitly modeled assumptions.
New technology: Causal Humility Guard (CHG) — ADOPT. Timeline correlations and before/after changes cannot be labeled causal without appropriate evidence/design.
New technology: Historical Compression Index (HCI) — EXPERIMENT. Tier/compress repetitive history while preserving material state transitions, replay anchors and audit obligations.

# M36 — Storefront Reverse Engineering

Goal: infer observable commercial patterns from seller/storefront public evidence where permitted, without claiming private strategy or intent.

Observable dimensions may include assortment/category mix, brand mix, price positioning, listing quality, fulfillment modes, stock/availability signals if exposed, title/media patterns, catalog participation, reputation/review/question signals, assortment additions/removals and observable change cadence.

New technology: Storefront Fingerprint Graph (SFG) — ADOPT. Evidence-backed temporal representation of observable storefront structure and change.
New technology: Assortment Mutation Detector (AMD) — ADOPT. Detect additions/removals/category shifts/price-position changes with snapshot lineage.
New technology: Strategy Hypothesis Envelope (SHE) — ADOPT. Any inferred seller strategy is explicitly MODEL_INFERENCE/ESTIMATE with supporting observations, alternatives and limitations.
New technology: Seller Archetype Lab (SAL) — EXPERIMENT. Cluster sellers by observable behavior for research segmentation, never as private-trait or intent truth.
New technology: Copycat Risk Guard (CRG) — ADOPT. Competitor observation may generate research hypotheses, but ML Hunter must recompute sourcing/economics/risk for the tenant rather than blindly imitate another seller.

# Cross-module proprietary systems

## Discovery Flywheel (DFW) — ADOPT
`seed -> evidence gain -> graph enrichment -> search/niche qualification -> economics -> decision -> realized outcome -> discovery priors/benchmarks`.
Realized outcomes may inform exploration priorities but cannot rewrite historical evidence.

## Evidence Novelty Score (ENS) — EXPERIMENT
Estimate how much genuinely new graph/search/source information a research action may add, helping avoid repetitive collection. Benchmark against coverage gain per request/cost.

## Opportunity Genome (OG) — EXPERIMENT
Represent an opportunity as an explainable feature/evidence signature across sourcing, identity, market, search, competition, economics, time-to-cash, risk and uncertainty. Used for similarity/research, not as opaque authoritative truth.

## Temporal Truth Mesh (TTM) — ADOPT
Common temporal/provenance contract across M32-M36 so snapshots, graph edges, search evidence and storefront changes can be replayed without present-day leakage.

# Planned file families
`src/discovery/*`
`src/discovery/seeds/*`
`src/discovery/evidence-gain/*`
`src/market-graph/*`
`src/market-graph/temporal/*`
`src/search-intelligence/*`
`src/history/timeline/*`
`src/history/replay/*`
`src/storefront-intelligence/*`
`src/contracts/temporal/*`
`tests/discovery/*`
`tests/graph/*`
`tests/search-intelligence/*`
`tests/historical-replay/*`
`tests/storefront/*`

# Golden cases
1. Discovery seed with weak evidence becomes RESEARCH, not BUY.
2. Exploration budget cannot starve economically critical refresh work.
3. Two agreeing graph edges cannot convert an estimated identity relation into OBSERVED.
4. Conflicting product/category relations trigger evidence work rather than silent resolution.
5. Missing legitimate search-volume data remains UNKNOWN.
6. Search result composition change is preserved historically and does not rewrite old snapshots.
7. Late-arriving evidence records learned-at separately from observed/valid time.
8. Counterfactual replay cannot access evidence learned after historical cutoff.
9. Storefront pattern inference is labeled inference, not seller intent fact.
10. Copycat workflow cannot recommend purchase without tenant-specific sourcing/economics.
11. Discovery Diversity Guard preserves exploration outside currently dominant profitable cluster within configured budget.
12. Historical compression retains material decision/replay/audit anchors.

## Batch STOP CONDITION
`M32_M36_PLANNING_BATCH_COMPLETE` after discovery lifecycle/budget, temporal graph contract, search truth boundaries, bitemporal history/replay, storefront inference boundaries, tests/file maps/Codex contexts and ownership with M31/M37-M41 are reconciled with no HIGH/CRITICAL contradiction.
