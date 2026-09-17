# Batch 09 — M42-M46 Advanced Commercial Intelligence

Status: PLAN-IN-PROGRESS
Depends on: M01-M41

## Mission
Turn the evidence, market graph and global sourcing foundation into a bidirectional intelligence laboratory that discovers competitive structure, buyer-demand signals, acquisition sources, product relationships and new opportunities without creating competing truth/decision engines.

Canonical loop:
`market evidence -> Spy fabric -> demand/trend evidence -> reverse sourcing -> relationship graph -> opportunity lab -> M09 economics -> M10 Hunter decision -> M11/M47+ capital/operations`

## M42 — Marketplace Spy & Competitive Intelligence Fabric
Purpose: advanced evidence-backed competitor intelligence across sellers/products/brands/categories/search neighborhoods/time.

Planned capabilities: market definitions; watchlists; storefront reverse research; brand/category coverage; comparable-offer graph; seller-product relations; price/offer history; catalog competition; legitimate reputation/review/question signals; competitor changes; concentration/proxy metrics; entrant/exit evidence; competitive event timeline; evidence/confidence; AI brief constrained by evidence.

New technologies:
- Competitive Evidence Fabric (CEF) — ADOPT. Unified temporal graph of seller/product/offer/category/search/brand evidence with provenance.
- Rival Strategy Fingerprint (RSF) — EXPERIMENT. Derives repeatable observable behavior patterns without claiming private strategy or cost.
- Competitive Event Causality Guard (CECG) — ADOPT. Separates observed change, derived association and causal hypothesis.
- Spy Research Budgeter (SRB) — ADOPT. Allocates requests/AI/time by expected information value and compliance/quota budget.

Ownership: consumes M31/M33/M34/M35/M36/M38. M42 owns advanced Spy synthesis, not competitor discovery itself and never private competitor facts.

## M43 — Demand, Search & Trend Intelligence
Purpose: detect evidence that buyer interest/market structure is changing before sourcing capital is committed.

Capabilities: query universe; keyword-product graph; rank/history; organic/sponsored classification only where supported; seasonality; category momentum; review/question velocity where legitimate; emerging product/brand; acceleration/deceleration; confidence; anomalies; cross-category propagation; alerts; AI interpretation.

New technologies:
- Demand Signal Lattice (DSL) — ADOPT. Keeps independent demand proxies with provenance instead of collapsing them prematurely.
- Trend Acceleration Field (TAF) — EXPERIMENT. Measures change in multiple temporal demand proxies with seasonality/source-change controls.
- Search Intent Morphology (SIM) — EXPERIMENT. Maps query families and intent shifts without treating search text as direct sales truth.
- Demand Mirage Filter (DMF) — ADOPT. Detects cases where apparent trend may come from source/ranking/method changes, duplicated signals or short-lived noise.

Ownership: M34 owns baseline search/keyword observations; M43 owns advanced demand/trend synthesis. Demand proxy never becomes observed sales without sales evidence.

## M44 — Reverse Sourcing & Supplier Discovery
Purpose: start with market demand/competitor products and discover legitimate acquisition paths.

Capabilities: seller/product extraction; canonical identity; GTIN/MPN matching; Supplier Graph lookup; local/online/distributor/wholesale matching; MOQ; landed cost; supplier history; alternatives/substitution/diversification; bulk reverse sourcing; AI research; procurement handoff.

New technologies:
- Reverse Supply Resolver (RSR) — ADOPT. `market product -> identity proof -> supplier candidates -> offer evidence -> landed cost -> economic scenario`.
- Supplier Substitution Graph (SSG) — ADOPT. Represents alternative suppliers/offers while preserving pack/variant/terms differences.
- Acquisition Path Diversity Index (APDI) — EXPERIMENT. Quantifies sourcing concentration/resilience without implying supplier reliability beyond evidence.
- Supplier Evidence Bounty (SEB) — EXPERIMENT. Prioritizes the next cheapest/high-value evidence action needed to validate a promising source path.

Ownership: M02-M07/M41 own source/identity/price/vertical semantics; M44 owns reverse discovery orchestration. M09 owns economics and M11 procurement.

## M45 — Product Relationship & Basket Graph
Purpose: model evidence-backed complementary, substitute, adjacency and bundle relationships.

Capabilities: complementary/substitute graphs; brand/category adjacency; bundle candidates; kit economics; cross-sell; cannibalization; attach-rate proxy only where supported; relationship confidence; sourcing; competition; AI bundle discovery.

New technologies:
- Commerce Relationship Graph (CRG) — ADOPT. Typed temporal edges COMPLEMENT, SUBSTITUTE, VARIANT, ADJACENT, BUNDLE_CANDIDATE with evidence/truth class.
- Bundle Economics Compiler (BEC) — ADOPT. Sends component costs, fees, packaging/logistics and bundle constraints to M09 deterministic economics.
- Cannibalization Evidence Lens (CEL) — EXPERIMENT. Detects overlap risk from tenant/market evidence without fabricating causal demand transfer.
- Relationship Independence Guard (RIG) — ADOPT. Prevents duplicate derived signals from masquerading as independent relationship evidence.

## M46 — Advanced Opportunity Discovery Lab
Purpose: actively search a multidimensional opportunity space rather than waiting for known SKUs.

Capabilities: saved searches; strategy templates; multidimensional filters; demand/competition matrix; economics/history/seller/review/listing-quality/category-growth/source/locality/capital/time-to-cash/risk filters; explainable candidate generation; discovery history.

New technologies:
- Opportunity Search Space Compiler (OSSC) — ADOPT. Compiles tenant strategy + vertical constraints + market/source/economic evidence into bounded candidate queries.
- Counterfactual Opportunity Lab (COL) — EXPERIMENT. Asks bounded what-if questions such as supplier cost/competition/price changes using M09 scenarios, never rewriting truth.
- Opportunity Novelty Detector (OND) — EXPERIMENT. Prioritizes materially new candidate structures while suppressing near-duplicate rediscovery.
- Discovery Regret Ledger (DRL) — EXPERIMENT. Retrospectively measures missed/false candidate opportunity cost only when later outcome evidence permits.
- Explainable Candidate Capsule (ECC) — ADOPT. Compact handoff carrying why candidate exists, evidence, unknowns, freshness, constraints, economics refs and next evidence action.

Ownership: M46 generates/searches candidates. M39 owns heat representation; M09 owns economics; M10 owns final Hunter action/decision; M47 later owns portfolio capital allocation; M57 later owns persistent visual Strategy Studio/Saved Hunters product surface.

## Cross-module proprietary layer — Hunter Bidirectional Discovery Fabric (HBDF) — ADOPT
Two evidence paths converge without confidence laundering:
1. `Supplier/source -> product -> market -> economics -> candidate`
2. `Market/demand/competitor -> product -> supplier -> landed cost -> economics -> candidate`

Convergence may strengthen research priority when evidence is genuinely independent. It never automatically upgrades truth class or authorizes purchase.

## Golden invariants
1. No competitor private cost/sales/strategy is presented as observed without legitimate evidence.
2. Search/review/question/rank signals remain proxies unless stronger evidence exists.
3. Reverse sourcing requires identity/pack evidence sufficient for the economic risk.
4. Alternative supplier does not imply equivalent pack, terms, quality or availability.
5. Bundle relationship is not demand proof by itself.
6. Opportunity candidate is not a Hunter decision.
7. AI may synthesize/explain but cannot create missing evidence or financial truth.
8. All graph/temporal edges preserve method/provenance/version/freshness.
9. Research expansion is budget/quota/compliance bounded.
10. Historical evaluation cannot use future evidence.

## Planned file families
`src/intelligence/spy/*`
`src/intelligence/demand/*`
`src/intelligence/reverse-sourcing/*`
`src/intelligence/relationships/*`
`src/intelligence/opportunity-lab/*`
`src/contracts/intelligence/*`
`tests/intelligence/*`

## Batch STOP CONDITION
`M42_M46_PLANNING_BATCH_COMPLETE` after advanced Spy/demand/reverse-sourcing/relationship/opportunity contracts, truth boundaries, temporal/research budgets, tests/file maps/Codex contexts and ownership with M31-M41/M47+ are reconciled with no HIGH/CRITICAL planning contradiction.
