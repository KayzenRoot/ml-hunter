# ML Hunter — Mercado Livre Market & Competitor Intelligence Discovery

Status: DISCOVERY DIRECTION — NOT FINAL ARCHITECTURE
Governed increment: `MLH-WO-0002-PRODUCT-DISCOVERY`
Date: 2026-09-17

## Product intent
Create a first-class Mercado Livre intelligence workspace that helps a tenant understand products, listings, sellers/stores, competition and market movement using data legitimately available to the integration. Internally this may be nicknamed Market Spy, but product terminology should favor Market Intelligence / Competitor Intelligence.

The module must distinguish observed facts from estimates. It must never present an estimated competitor profit, sales velocity or demand signal as an exact private fact.

## Proposed new module
### M31 — Mercado Livre Market & Competitor Intelligence
Classification: NECESSARY candidate for V1 discovery; final V1 slice to be decided after API/cost feasibility.

Sessions:
- M31.1 product/listing search workspace
- M31.2 seller/store discovery and watchlists
- M31.3 listing/seller snapshots and history
- M31.4 public/authorized sold-quantity and transaction signals
- M31.5 visits/traffic signals where API scope permits
- M31.6 questions/reviews/opinion signals where permitted
- M31.7 seller reputation and service-quality signals
- M31.8 catalog competition / winning / price-to-win signals
- M31.9 price, shipping, installments and fulfillment comparison
- M31.10 listing quality / content / attributes comparison
- M31.11 category and keyword market mapping
- M31.12 product saturation and competitor density
- M31.13 price distribution and positioning
- M31.14 demand/liquidity proxy model
- M31.15 competitor sales-velocity estimation with confidence intervals
- M31.16 competitor cost/profit estimation model with explicit assumptions
- M31.17 opportunity-gap detector
- M31.18 emerging-product / trend detector
- M31.19 competitor change detection and timeline
- M31.20 watchlist alerts
- M31.21 AI competitor analyst
- M31.22 compare-my-listing-vs-market view
- M31.23 evidence/provenance/confidence UI
- M31.24 API/privacy/ToS boundary review
- M31.25 cache/quota/cost strategy
- M31.26 historical dataset and retention
- M31.27 benchmark/backtest of estimates
- M31.28 tenant/admin controls and entitlements

## Key user workflows
1. Search a product and see comparable listings, sellers, price bands, catalog competition, reputation, reviews/questions and other available demand signals.
2. Open a seller/store and create a watchlist of relevant listings/products.
3. Compare the tenant's own listing against the observable market.
4. Detect price, catalog-competition, reputation, assortment and listing changes over time.
5. Estimate market attractiveness and sales velocity only when evidence supports an estimate, with confidence and provenance.
6. Estimate competitor economics only as a scenario/range based on explicit acquisition-cost and fee assumptions. Never claim access to a competitor's private cost or true profit.
7. Feed validated market signals into Hunter ranking, repricing, replenishment and opportunity discovery.
8. Generate alerts when a watched competitor changes price, gains/loses relevant catalog position, changes assortment, or when a market opportunity/gap appears.

## Proposed intelligence outputs
- Market Heat Score
- Competition Density
- Price Position
- Demand/Liquidity Signal
- Seller Strength Signal
- Listing Quality Signal
- Catalog Competition State
- Opportunity Gap Score
- Estimated Sales Velocity (range + confidence)
- Estimated Competitor Margin Scenario (range + assumptions, never asserted as fact)
- Trend Direction
- Evidence Freshness
- Data Confidence

## Important truth boundary
### Observed
Values returned directly by an authorized/legitimate source and stored with source, timestamp and provenance.

### Derived
Deterministic calculations from observed values.

### Estimated
Statistical/heuristic/AI inference. Must include model version, assumptions, evidence window and confidence.

### Unknown
If the system cannot legitimately observe or estimate a value with acceptable evidence, display UNKNOWN. Never fabricate a number to fill the dashboard.

## Integration with existing modules
- M08 becomes the underlying Mercado Livre market-data capability.
- M09 supplies deterministic fee/profit scenario calculations.
- M10 consumes market intelligence for Hunter ranking.
- M13 uses competitive evidence for listing/publishing/repricing decisions.
- M15 exposes tenant Market Intelligence views.
- M18 stores temporal competitor snapshots.
- M22 monitors freshness and data quality.
- M25 controls API/AI quota and cost.
- M27 sends watchlist and market alerts.
- M28 supplies evidence-grounded AI interpretation.
- M31 owns competitor/seller/product intelligence workflows and derived market models.

## Product principles
- Competitive intelligence is for decision support, not harassment or circumvention of platform controls.
- Prefer official Mercado Livre APIs and permitted data.
- Do not bypass authentication, access controls, rate limits or anti-bot mechanisms.
- Separate seller-level public/authorized signals from tenant-private data.
- Never infer exact private competitor purchase cost or profit without evidence.
- Historical snapshots are strategically valuable because they turn transient marketplace signals into proprietary longitudinal intelligence.

## Proposed future differentiators
### Market Replay
Replay a product/category market over a selected period to understand price/competition movement.

### Competitor Fingerprint
Summarize a seller's observable strategy: price positioning, categories, assortment changes, catalog participation, fulfillment/shipping characteristics and listing quality. All claims must be evidence-backed.

### Opportunity Gap Radar
Find products with promising demand/liquidity signals where competition, price positioning or local acquisition economics create a potential opening for the tenant.

### My Store vs Market
For every tenant listing, compare observable market conditions and produce safe actions: HOLD, INVESTIGATE, REPRICE, IMPROVE LISTING, REPLENISH, PAUSE or RECOVER, subject to tenant policy.

### AI Market Analyst
Natural-language questions over structured evidence, e.g. “why did this opportunity deteriorate?”, “what changed among watched sellers this week?”, and “which watched products now meet my margin and capital constraints?”.

## Discovery gate
Before architecture freeze, verify current Mercado Livre endpoint availability, authorization scope, rate limits, permitted seller/listing/visit/question/review data, catalog competition semantics and policy constraints. Any unavailable signal must be removed or explicitly marked UNKNOWN/estimated before acceptance.
