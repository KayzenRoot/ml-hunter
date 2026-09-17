# Planning Batch 01 — M02-M06

Status: PLAN-IN-PROGRESS
Rule: five-module batches; technology-first; no product implementation.

## M02 — Zero-Cost Data Source Strategy
Purpose: obtain the broadest trustworthy sourcing/market/product evidence under near-zero initial cost without brittle provider lock-in.

Sessions expanded: source taxonomy; official/free API inventory; first-party catalogs; open datasets; feed/document sources; capability scoring; quota ledger; adaptive cache; fallback/degradation; legal/license evidence; source economics; paid-migration triggers; data-value benchmarking.

Proprietary/new technology candidates:
- **Source Value Optimizer (SVO):** schedules calls/collections by expected information gain × economic opportunity × freshness need ÷ quota/cost/risk.
- **Quota Exchange Fabric (QEF):** global budget allocator that redistributes scarce API quota among tenants/jobs/categories based on marginal expected value while honoring fairness/reservations.
- **Evidence Yield Score (EYS):** measures usable, fresh, identity-resolvable evidence per request/real spent, not raw records fetched.
- **Zero-Cost Frontier:** continuously identifies which coverage can remain free and the exact point where a paid source becomes economically justified.
- **Adaptive Freshness Mesh:** learns refresh cadence by volatility instead of fixed polling intervals.

Core rules: never fabricate free APIs; capability/cost/legal status are evidence states; caching and bulk/open datasets precede paid calls where legitimate; provider outage must degrade explicitly.

Planned files: `src/sources/registry/*`, `src/sources/economics/*`, `src/sources/quota/*`, `src/sources/freshness/*`, `src/sources/policy/*`; tests mirror contracts. Exact extensions deferred.

Acceptance: every candidate source can be compared by capability, provenance, freshness, quota, legal status, reliability, integration effort and economic yield; scheduler can operate without assuming unlimited free access.

## M03 — Retailer & Wholesaler Collector Platform
Purpose: turn heterogeneous legitimate catalogs/offers into normalized observations without contaminating core domains with source-specific logic.

Sessions expanded: adapter contract; discovery/detail/pagination; store context; tier/MOQ; auth; robots/ToS evidence; scheduling; incremental collection; dedup; anti-breakage; schema drift; fixtures; health; replay; quarantine; reconciliation; source onboarding/certification.

Technology candidates:
- **Self-Healing Collector Contract (SHCC):** structural fingerprints detect upstream schema/UI changes, quarantine suspicious mappings and propose adapter repairs from recorded fixtures. AI may propose, never silently deploy unsafe extraction changes.
- **Collector Digital Twin:** replayable captured fixtures simulate a source offline for deterministic regression and Codex debugging.
- **Schema Drift Radar:** semantic + structural drift scoring before bad data contaminates price history.
- **Confidence-Gated Ingestion:** observations failing identity/price/provenance invariants enter quarantine rather than canonical storage.
- **Delta Harvesting:** content fingerprints and cursor/state memory avoid refetching unchanged catalog regions.
- **Source Blast-Radius Cells:** each adapter executes with isolated quotas, circuit breaker, health and failure budget.

Planned files: `src/collectors/contracts/*`, `src/collectors/runtime/*`, `src/collectors/adapters/<source>/*`, `src/collectors/drift/*`, `src/collectors/quarantine/*`, `src/collectors/replay/*`, `tests/fixtures/sources/*`.

Acceptance: adding a source normally requires an adapter/capability package and fixtures, not core changes; malformed/drifted data cannot silently enter canonical truth.

## M04 — Geography, CEP & Store Discovery
Purpose: model where a tenant can realistically acquire goods and what geography costs economically.

Sessions expanded: CEP/address input; geocoding abstraction; privacy; radius; road/travel time; store locator; coverage zones; pickup/delivery; tenant preferences; route feasibility; source geography confidence; multi-region readiness.

Technology candidates:
- **Economic Reach Graph (ERG):** replaces naive radius with nodes/edges weighted by travel time, pickup constraints, minimum spend, freight and opportunity value.
- **Dynamic Sourcing Radius:** expands/contracts search radius according to expected profit density and procurement cost.
- **Geo Opportunity Density Map:** estimates expected profit/capital opportunities per acquisition zone.
- **Privacy-Preserving Geo Resolution:** retains only precision needed for sourcing decisions and separates precise tenant location from shared market intelligence.
- **Route-Amortized Cost Field:** allocates travel cost across a basket/route rather than charging every SKU independently.

Planned files: `src/geography/location/*`, `src/geography/providers/*`, `src/geography/reach/*`, `src/geography/routes/*`, `src/geography/privacy/*`.

Acceptance: sourcing feasibility is based on economic reach, not only straight-line distance; geography remains provider-neutral and multi-region capable.

## M05 — Product Identity & Catalog Intelligence
Purpose: create a trustworthy canonical product identity layer across supplier and marketplace representations.

Sessions expanded: GTIN/EAN/UPC; SKU/MPN; canonical entity; packs/units; variants; category/tax metadata; deterministic matching; fuzzy matching; AI-assisted ambiguity; confidence; dedup; conflict resolution; lineage; human review; identity history.

Technology candidates:
- **Identity Evidence Graph (IEG):** identifiers, titles, brands, dimensions, images, pack sizes, categories and source assertions become weighted evidence edges rather than one destructive match score.
- **Identity Time Machine:** preserves merge/split history so historical prices/opportunities can be reinterpreted after identity corrections.
- **Match Proof:** every canonical link exposes the evidence that made it safe, contradictory evidence and confidence.
- **Pack Algebra Engine:** canonical arithmetic for `6x200ml`, `12 units`, multipacks, weight/volume/unit normalization to prevent false profit comparisons.
- **Ambiguity Budget:** limits AI/human review to identity conflicts with highest expected economic impact.
- **Counterfactual Matcher:** calculates how profitability changes if competing identity hypotheses are true, prioritizing risky mismatches.

Planned files: `src/catalog/identity/*`, `src/catalog/matching/*`, `src/catalog/pack-algebra/*`, `src/catalog/evidence-graph/*`, `src/catalog/review/*`, `src/catalog/lineage/*`.

Acceptance: canonical matching is explainable/reversible; uncertain identity cannot silently drive high-impact purchase/listing actions.

## M06 — Images & Product Media
Purpose: acquire, deduplicate, validate, transform and govern product media without losing provenance/rights context.

Sessions expanded: source priority; rights/provenance; image fingerprints; quality; duplicates; canonical media; transformations; background/crop/readability; marketplace constraints; missing media; object cache; retention; safety; variant correctness; generated media policy.

Technology candidates:
- **Media Provenance Chain (MPC):** every derivative links source asset, rights evidence, transformation recipe/version and target usage.
- **Variant Visual Guard:** vision/metadata checks detect when an image likely represents a different flavor/size/color/model than the canonical variant.
- **Perceptual Media Graph:** pHash/embedding/metadata clusters near-duplicates while retaining source lineage.
- **Marketplace Media Compiler:** deterministic recipe converts a governed master asset into marketplace-specific derivatives without destroying the master.
- **Media Quality Value Score:** prioritizes repair/enrichment where image improvement is most likely to improve listing readiness/value.
- **Synthetic Media Firewall:** generated/edited assets are explicitly labeled internally, policy-checked and never confused with observed manufacturer/source media.

Planned files: `src/media/domain/*`, `src/media/provenance/*`, `src/media/dedup/*`, `src/media/quality/*`, `src/media/variants/*`, `src/media/compiler/*`, `src/media/policy/*`.

Acceptance: no media is republished without provenance/policy state; derivatives are reproducible; variant mismatch is guarded; missing/unsafe media degrades safely.

## Cross-module inventions
### Evidence Economy Scheduler
M02 SVO + M03 collector health + M04 economic reach + M05 identity uncertainty + M06 media completeness feed one scheduler that asks: **what next data acquisition has the highest expected decision value per unit of quota/cost/time/risk?** This avoids collecting everything blindly.

### Acquisition Evidence Capsule
A candidate product can carry a compact capsule containing source observation, geography feasibility, identity proof, media readiness, freshness and policy state. Downstream Profit/Hunter modules consume the capsule instead of rereading raw source payloads, reducing coupling and future Codex/LLM context.

### Uncertainty Propagation Bus
Uncertainty is not erased between modules. Source freshness, geo uncertainty, identity confidence and media mismatch risk propagate as typed signals to later profit/ranking decisions.

## Batch gates
Before M02-M06 are PLAN-COMPLETE, each requires its standard planning contract (MASTER, REQUIREMENTS, DOMAIN, UX where relevant, DATA, API-CONTRACTS, SECURITY, OBSERVABILITY, TESTS, DECISIONS, FILE-MAP, CODEX-CONTEXT). This batch document establishes the deep design direction and proprietary technology backlog; it does not falsely mark those module packs complete.

Batch STOP CONDITION when detailed packs close: `M02_M06_PLANNING_BATCH_COMPLETE`.