# Batch 07 — M32-M36 Contract Pack

Status: PLAN-IN-PROGRESS

## M32 Discovery contract
OpportunitySeed fields: seed_id/version, tenant_scope, discovery_path, subject refs, evidence refs, source/market context, novelty/diversity tags, expected evidence actions, research cost budget, created_at, expires_at and state.

Discovery is a research funnel, never a purchase authorization. Qualification requires identity fitness, market evidence fitness, source/economic feasibility and policy eligibility sufficient for the next stage.

Evidence Gain Planner outputs a ranked set of evidence actions with expected uncertainty reduction, request/token/API cost, latency, expiry and blocking dimensions. Estimates are explicitly marked.

Discovery Diversity Guard operates under a tenant-configured exploration budget. It cannot force economically unsafe purchases; it only protects research-space diversity.

## M33 Graph contract
Graph node/edge metadata: type/version, entity refs, relation type, truth class, confidence method, provenance, valid_from/to where known, observed_at/learned_at, freshness, tenant/public visibility and supersession refs.

Edge Confidence Algebra never upgrades an edge to OBSERVED merely from multiple inferred paths. Independent observations may strengthen confidence under calibrated rules while truth class remains semantically correct.

Graph storage technology remains unresolved; contract is logical and must support bounded traversal, temporal replay, provenance and tenant visibility regardless of physical implementation.

## M34 Search contract
SearchObservation preserves marketplace, query, locale/category/filter context, result snapshot refs, observed time, capability/method, provenance and pagination/coverage limitations.

KeywordSignal may include observable result composition, price distribution, seller/category/product diversity, rank/position when legitimate, suggestion/autocomplete evidence where available, temporal change and derived competition/demand proxies. Exact search volume remains UNKNOWN without a legitimate source exposing it.

Query Opportunity Compiler produces ResearchHypothesis objects with evidence gaps and next actions; it cannot emit BUY directly.

## M35 Historical contract
Bitemporal fields distinguish valid/observed time from learned/recorded time. Late-arriving data never backdates system knowledge.

Decision Memory Capsule references exact evidence/policy/formula/algorithm/model versions, decision output, known unknowns and expiry. It is immutable; corrections supersede.

Historical replay declares cutoff and admissibility policy. Any input learned after cutoff is rejected from historical decision reconstruction unless the replay is explicitly labeled present-day counterfactual.

## M36 Storefront contract
StorefrontObservation is limited to legitimately observable seller/storefront evidence and capability constraints. StrategyHypothesis carries observations, inference method, alternatives, confidence/limitations and class MODEL_INFERENCE or ESTIMATE.

Seller archetypes are research segmentation based on observable commercial behavior, never protected/private-trait profiling or claims of intent/personality.

Copycat Risk Guard requires tenant-specific identity, sourcing, landed-cost, policy and economics checks before another seller's product can become a tenant opportunity.

# New technologies deepened

### Exploration Portfolio Engine (EPE) — EXPERIMENT
Allocate bounded research budget across exploit, adjacent exploration and novel exploration buckets. Benchmark qualified-opportunity yield, evidence cost, category concentration and realized-outcome diversity versus pure top-score research.

### Niche Friction Index (NFI) — EXPERIMENT
Multi-dimensional vector, not a magic scalar: competition density, identity ambiguity, sourcing difficulty, fulfillment complexity, returns/reputation signals, evidence scarcity and capital/time-to-cash burden. Each component exposes source/truth/limitations.

### Temporal Commerce Knowledge Graph (TCKG) — ADOPT
Logical graph supporting historical node/edge versions and provenance. Present state is a projection, not destructive overwrite of history.

### Graph Contradiction Resolver (GCR) — EXPERIMENT
Classify contradictions into identity, taxonomy, temporal, source disagreement and stale-evidence classes. Produce evidence actions or quarantine; never auto-resolve by profitability or majority vote alone.

### Semantic Demand Clusterer (SDC) — EXPERIMENT
Cluster queries using lexical/embedding/category/result-overlap signals. Cluster labels are derived; original query evidence remains intact. No invented search volume.

### Bitemporal Hunter Timeline (BHT) — ADOPT
Provides common historical semantics for source, market, decision, policy, commerce and realized-economic events.

### Historical Compression Index (HCI) — EXPERIMENT
Compression may summarize repetitive low-materiality observations, but immutable anchors, material state transitions, financial/audit/security evidence and replay-required snapshots are protected from lossy removal.

### Storefront Fingerprint Graph (SFG) — ADOPT
Temporal graph of observable assortment, category/brand mix, price positioning, listing/media/fulfillment/reputation signals and changes. No private strategy claims.

### Opportunity Genome (OG) — EXPERIMENT
Structured explainable signature references evidence-backed features rather than copying raw payloads. Similarity can suggest research neighbors but cannot transfer profitability assumptions between products.

# Cross-module anti-feedback-loop rules
- Realized success can influence exploration priority only through versioned learning/benchmark policy.
- High historical profit cannot bypass current freshness, identity, compliance or economics.
- Discovery ranking cannot repeatedly reinforce itself using its own prior score as independent evidence.
- Competitor/storefront popularity is not proof of tenant profitability.
- Semantic similarity is not product identity.

# Codex context packs
M32: discovery lifecycle + M31 market evidence + M02 acquisition scheduling + M10 decision boundary + budget contracts.
M33: identity/provenance/temporal contracts + M08/M31 evidence schemas + tenant visibility.
M34: marketplace capability + search truth rules + temporal snapshot contract.
M35: lineage/reproducibility + EDC/DMC + policy/formula/model version refs.
M36: market/storefront evidence + compliance + inference truth boundary + sourcing/economics gates.

# Acceptance evidence families
Discovery funnel state/property tests; research-budget tests; diversity-loop tests; graph temporal/provenance tests; contradiction seeded cases; search snapshot replay; zero-volume honesty cases; bitemporal late-arrival tests; historical cutoff leakage tests; compression replay-integrity tests; storefront inference labeling tests; copycat safety tests; tenant visibility graph tests.
