# Batch 08 — M37-M41 Advanced Sourcing, Competitor Discovery & Global Hunter

Status: PLAN-IN-PROGRESS
Modules: M37 Advanced Sourcing Analyzer / Barcode Mobile; M38 Automatic Competitor Discovery; M39 Market Heat & Opportunity Matrix; M40 Business Anomaly & Opportunity Detection; M41 Global Category Sourcing Platform.

## Mission
Make ML Hunter capable of finding and qualifying acquisition opportunities from physical/local/online sourcing, automatically expanding the relevant competitor universe, compressing market conditions into explainable opportunity surfaces, detecting material changes and operating across categories without hard-coded grocery assumptions.

# M37 — Advanced Sourcing Analyzer / Barcode Mobile

Core workflows: scan GTIN/EAN/UPC/barcode; resolve identity candidates; capture/confirm source/store/offer/pack/quantity; compare acquisition evidence with marketplace state; calculate deterministic economics; display MAX COST; save evidence; create procurement/research candidate. Camera/OCR/manual entry are input methods, not truth upgrades.

Mobile must support intermittent connectivity with explicit freshness/offline state. A cached opportunity cannot masquerade as current market truth.

New technology: Scan-to-Economics Capsule (SEC) — ADOPT. One compact evidence object links scan/raw input, resolved identity, source offer, pack normalization, market snapshot refs, economic scenario and freshness.
New technology: Maximum Safe Buy Price Lens (MSBPL) — ADOPT. Present deterministic M09 MAX COST with assumptions, target margin/ROI and uncertainty; never ask an LLM to calculate the authoritative value.
New technology: Shelf Decision Mode (SDM) — ADOPT. Mobile UX optimized for seconds-to-decision: BUY_TEST/RESEARCH/SKIP plus evidence freshness and reason, while actual procurement authorization remains separate.
New technology: Offline Evidence Quarantine (OEQ) — ADOPT. Offline observations are timestamped/local and cannot silently update current canonical price/market truth until synchronized/validated.
New technology: Visual Pack Consistency Check (VPCC) — EXPERIMENT. Compare captured packaging/media against candidate identity/pack attributes to surface mismatches, not auto-certify identity.

# M38 — Automatic Competitor Discovery

Discovery seeds: same canonical product, overlapping category/brand/keyword/search-result neighborhoods, similar assortment, catalog participation and observable market adjacency. Discovery creates competitor candidates with reason/evidence, not assertions of strategic relevance.

New technology: Competitor Relevance Graph (CRG) — ADOPT. Seller relevance is multi-edge evidence over products/categories/keywords/price positions/assortment overlap and time.
New technology: Competitive Horizon Expander (CHE) — EXPERIMENT. Iteratively explore adjacent seller/product neighborhoods under evidence/cost/diversity budgets and stop rules.
New technology: Rivalry Confidence Envelope (RCE) — ADOPT. Distinguish direct, adjacent, category, keyword and weak competitor relations with evidence/confidence/limitations.
New technology: Competitor Drift Watch (CDW) — ADOPT. Re-evaluate relevance as assortment/categories/search neighborhoods change; competitor set is temporal, not permanent.

# M39 — Market Heat & Opportunity Matrix

Goal: provide explainable market surfaces combining independent dimensions rather than a single opaque score.

Candidate dimensions: demand/liquidity proxies, competitive pressure, price dispersion/stability, seller concentration, source availability, acquisition advantage, economic margin/profit/ROI, capital/time-to-cash, identity/evidence confidence, freshness, operational friction and policy risk.

New technology: Opportunity Heat Tensor (OHT) — ADOPT. Multi-dimensional representation by product/category/keyword/geography/time/tenant strategy; UI may project it to matrices but raw dimensions remain inspectable.
New technology: Heat Explainability Decomposer (HED) — ADOPT. Every hot/cold classification exposes contributing dimensions, evidence classes and uncertainty.
New technology: Opportunity Phase Map (OPM) — EXPERIMENT. Classify evidence-backed market states such as emerging, crowded, decaying, unstable or supply-constrained using replay-validated rules; labels are analytical states, not predictions.
New technology: Capital-Adjusted Heat (CAH) — ADOPT. Re-rank research/attention using tenant capital/time-to-cash constraints without changing underlying market evidence.

# M40 — Business Anomaly & Opportunity Detection

Anomaly classes: source price shock, marketplace price shift, competition/seller change, search/result composition shift, assortment mutation, stock/availability change, fee/policy/config change, profit leakage, reconciliation drift, unusual returns/refunds, evidence silence/staleness and cross-signal opportunity emergence.

New technology: Commerce Change Point Engine (CCPE) — ADOPT. Detect statistically/rule-significant changes over versioned observations with minimum evidence and seasonality/context hooks.
New technology: Opportunity Emergence Detector (OED) — ADOPT. Detect when independent changes combine to create a newly viable research/opportunity state.
New technology: Anomaly Causality Firewall (ACF) — ADOPT. Detection reports correlated evidence and hypotheses but cannot label root cause without sufficient evidence.
New technology: Economic Materiality Filter (EMF) — ADOPT. Suppress/deprioritize anomalies whose likely economic/operational impact is below tenant policy while preserving audit/history where required.
New technology: Weak Signal Constellation (WSC) — EXPERIMENT. Combine multiple individually weak, independent signals into a research trigger, never into OBSERVED truth or direct BUY.

# M41 — Global Category Sourcing Platform

Core abstraction: Marketplace demand <-> canonical product identity <-> supplier/source graph <-> landed acquisition cost <-> profit/risk engine <-> commerce control.

Vertical/category packs configure identity attributes, units/pack rules, logistics/storage, return risk, compatibility/fitment, expiry, warranty/voltage, variants, compliance and marketplace taxonomy mappings. Core domain semantics remain category-agnostic.

New technology: Vertical Capability Pack (VCP) — ADOPT. Versioned category-specific rules/capabilities plugged into universal contracts without branching the entire product codebase.
New technology: Category Constraint Compiler (CCC) — ADOPT. Compile vertical pack + marketplace/source/tenant policy into validation/economic/operational constraints.
New technology: Landed Cost Morphology Engine (LCME) — ADOPT. Compose category/geography/source-specific acquisition cost components into deterministic M09-compatible scenarios.
New technology: Cross-Vertical Transfer Lab (CVTL) — EXPERIMENT. Test whether discovery features/heuristics learned in one vertical transfer to another using benchmark evidence, never blindly sharing assumptions.
New technology: Category Unknown Guard (CUG) — ADOPT. Unsupported/partially modeled category constraints remain explicit and can block consequential recommendations rather than falling back to grocery defaults.

# Cross-module proprietary systems

## Universal Hunter Loop (UHL) — ADOPT
`scan/source/market seed -> identity -> source/market evidence -> competitor/search/heat/anomaly context -> landed economics -> decision -> procurement/commerce -> realized outcome -> historical learning`.

## Global Opportunity Coordinate (GOC) — EXPERIMENT
An explainable coordinate for an opportunity across market, sourcing, economics, time, capital, risk, evidence and operational dimensions. Used for visualization/similarity/portfolio research, not as a universal authoritative scalar score.

## Sourcing Reality Bridge (SRB) — ADOPT
Connect physical-world observations (scan/store/offer/pack) with digital marketplace identity/economics while preserving provenance, capture time, operator input and synchronization state.

## Competitive Discovery Budget (CDB) — ADOPT
Bound competitor graph expansion by API/request/token/time budgets and diminishing evidence gain, preventing crawler explosions.

## Category Portability Score (CPS) — EXPERIMENT
Measure how much of the universal Hunter pipeline works for a new vertical before custom rules are added. Used to plan vertical onboarding and expose unsupported assumptions.

# Planned file families
`src/sourcing/mobile/*`
`src/sourcing/scan/*`
`src/competitors/discovery/*`
`src/market-heat/*`
`src/anomaly/*`
`src/verticals/*`
`src/verticals/contracts/*`
`src/economics/landed-cost/*`
`src/contracts/sourcing/*`
`tests/mobile-sourcing/*`
`tests/competitor-discovery/*`
`tests/market-heat/*`
`tests/anomaly/*`
`tests/vertical-portability/*`

# Golden cases
1. Barcode resolves multiple pack variants -> mobile blocks unsafe economic shortcut and asks for evidence/selection.
2. Offline cached marketplace price is visibly stale and cannot authorize a current buy decision.
3. MAX COST always references deterministic scenario/version and exposes assumptions.
4. Competitor discovered through one weak keyword overlap remains weak/adjacent, not direct competitor.
5. Competitor set changes historically when seller assortment changes.
6. Heat UI can explain every projected hot/cold state from independent dimensions.
7. High market heat cannot bypass low evidence confidence or negative economics.
8. Price anomaly and seller exit jointly create a research trigger but not an automatic causal claim.
9. Weak Signal Constellation produces RESEARCH, never BUY directly.
10. New vertical with unknown fitment/expiry/regulatory rule cannot silently inherit grocery defaults.
11. Vertical pack changes are versioned and replayable for historical decisions.
12. Competitor expansion halts at configured evidence/cost budget.

## Batch STOP CONDITION
`M37_M41_PLANNING_BATCH_COMPLETE` after mobile sourcing truth/freshness, competitor discovery lifecycle/budget, explainable heat dimensions, anomaly/materiality/causality rules, vertical-pack/global-category contracts, tests/file maps/Codex contexts and ownership with M31-M36/M42+ are reconciled with no HIGH/CRITICAL contradiction.
