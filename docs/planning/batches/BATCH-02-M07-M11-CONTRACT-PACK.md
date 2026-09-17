# Batch 02 — M07-M11 Contract Pack

Status: PLAN-IN-PROGRESS

## Economic truth boundary
All monetary outputs originate from versioned deterministic calculations. AI may explain/scenario-assist but cannot author fee/tax/cost truth or bypass guards. Every material output carries currency, calculation version, evidence refs, truth/freshness and uncertainty where applicable.

# M07 Price Intelligence — contract
Entities: PriceObservation, PriceTier, PromotionWindow, ComparableUnitPrice, PriceSeries, PriceAnomaly.
States: OBSERVED -> VALIDATED -> NORMALIZED -> ACTIVE; suspicious observations -> QUARANTINED; old observations -> STALE/EXPIRED.
Rules: preserve original pack/tier; comparable unit price never destroys original offer; promo validity explicit; anomaly detection cannot silently delete evidence.
Interfaces: recordPriceObservation, normalizeOfferPrice, getPriceHistory, compareAcquisitionOffers, classifyPriceAnomaly.
Observability: observation latency, freshness, anomaly rate, quarantine rate, normalization failures, price-source disagreement.

# M08 Marketplace Intelligence — contract
Entities: MarketplaceCapability, MarketObservation, ListingSnapshot, SellerSnapshot, CategorySnapshot, DemandSignal, CompetitionSignal, MarketEvidenceSet.
Rules: public/legitimate observable facts separated from derived/estimated signals; private competitor sales/cost/profit never presented as observed truth; unavailable capability = UNKNOWN/degraded, not invented.
Interfaces: discoverCapabilities, observeMarket, getListingSnapshot, getCategorySignals, getCompetitionSignals, buildMarketEvidenceSet, replayMarketSnapshot.
Observability: quota/cost, capability availability, freshness, coverage, signal disagreement, snapshot lag.

# M09 Economics — formula ownership
Canonical scenario inputs include acquisition unit cost, source logistics/pickup allocation, prep/packaging, marketplace fees, shipping contribution/cost, configured taxes, payment/financing effects, advertising allowance, return/refund/loss allowance, other explicit tenant costs, expected sell price and quantity.

Canonical outputs include gross revenue; contribution profit; net profit under explicitly named definition; margin on revenue; ROI on invested capital; break-even sell price; break-even acquisition cost; MAX COST under tenant constraints; capital required; sensitivity/uncertainty envelope.

No universal tax/fee percentages are hard-coded in M09 planning. Provider/tax data enters as versioned inputs owned by appropriate adapters/policies.

## Financial invariants
- Money uses decimal/fixed-point semantics, never binary floating point for authoritative calculations.
- Currency is explicit.
- Rounding policy is explicit/versioned at boundaries.
- Formula version is persisted with decision snapshot.
- Missing mandatory cost = UNKNOWN/block or scenario assumption, never implicit zero.
- Scenario assumptions are visibly distinct from observed costs.
- Profit cannot be labeled realized until reconciled with actual commerce/financial evidence.

## Sensitivity
Profit Uncertainty Envelope computes deterministic scenarios over accepted ranges/distributions without claiming probabilistic precision unsupported by data. Profit Breaker Map identifies smallest material adverse changes capable of crossing tenant acceptance constraints.

# M10 Hunter Decision — contract
Recommendation actions: BUY_TEST, BUY, RESEARCH, WAIT, SKIP, RECHECK. Later commerce modules may add REPRICE/PAUSE/etc; M10 does not own those execution actions.

Decision inputs: Economic Decision Capsule candidate, tenant constraints, capital state, evidence fitness, opportunity decay, risk/compliance gates.
Decision output: action, rationale graph, blocking reasons, evidence gaps, economic summary, uncertainty, next evidence action, expiry/recheck time, score components/version.

## Ranking principle
A single scalar may exist for sorting but cannot be the sole explanation. Ranking SHALL expose component contributions and hard gates. A high score cannot override compliance/security/financial blockers.

## Capital-aware portfolio
Capital-Aware Opportunity Queue considers opportunities jointly under available/reserved capital. Initial implementation may use deterministic heuristic/optimization methods; algorithm choice is benchmark-gated. Objective is not simply maximum nominal profit: configurable capital turnover, risk, confidence and concentration constraints matter.

# M11 Procurement & Inventory — contract
Procurement states: DRAFT -> APPROVED -> CAPITAL_RESERVED -> PURCHASE_IN_PROGRESS -> PURCHASED -> RECEIVING -> RECEIVED -> RECONCILED; exceptional states CANCELLED, EXPIRED, DISCREPANCY, REVIEW_REQUIRED.
Inventory quantity classes: expected, ordered, purchased, received, available, reserved, listed, sold, returned, damaged/lost. Transitions require evidence/audit.

Procurement Evidence Packet carries product/pack identity, approved supplier/offer, max acceptable cost, quantity envelope, expected landed economics, evidence expiry, decision capsule ref, tenant policy ref and approval context.

## Quantity Safety Envelope
Defines TEST/MIN/TARGET/MAX quantities. Inputs include capital, MOQ/tier, storage constraints, expiry/perishability when relevant, estimated rotation/time-to-cash, confidence and concentration limits. Exact forecasting method belongs to later inventory/forecast modules.

# Proprietary technology deepening

## Economic Truth Kernel (ETK) — ADOPT
Mechanism: pure calculation graph with typed money/percentage/quantity inputs and named formula nodes.
Expected benefit: reproducibility, cheap testing, provider independence, auditability.
Benchmark: golden financial cases, property-based invariants, cross-version regression corpus.
Risk: formula sprawl. Mitigation: calculation registry + ADR ownership.

## Profit Uncertainty Envelope (PUE) — ADOPT
Mechanism: scenario expansion around uncertain material inputs plus sensitivity attribution.
Benefit: avoids false precision.
Benchmark: decision-flip detection and calibration against realized economics.

## Margin Fragility Index (MFI) — EXPERIMENT
Mechanism: normalized distance from current scenario to unacceptable economics across selected adverse dimensions.
Promotion gate: must improve risk discrimination over simpler sensitivity metrics.

## Decision Regret Simulator (DRS) — EXPERIMENT
Mechanism: evaluate plausible opportunity loss/downside across BUY/WAIT/RESEARCH/SKIP without pretending unknown future probabilities are facts.
Promotion gate: offline replay must show better capital/risk decisions than simpler policy baselines.

## Research-to-Profit Loop (RPL) — EXPERIMENT
Mechanism: value-of-information controller comparing cost/latency of further research with expected ability to change a material decision.
Promotion gate: measurable reduction in wasted API/AI/research spend or bad decisions.

## Economic Circuit Breaker (ECB) — ADOPT
Triggers include expired critical price evidence, invalid identity/pack, fee capability loss where fee is mandatory, contradictory high-impact evidence, tenant policy violation, capital reservation conflict or calculation-version incompatibility.
Actions: BLOCK, RECOMPUTE, RESEARCH, REQUIRE_REVIEW. Never auto-resolve by inventing missing inputs.

# Planned file map
`src/pricing/domain/price-observation.*`
`src/pricing/services/price-normalizer.*`
`src/pricing/services/price-anomaly-detector.*`
`src/marketplace/contracts/marketplace-capabilities.*`
`src/marketplace/intelligence/market-evidence.*`
`src/marketplace/intelligence/market-replay.*`
`src/economics/domain/money.*`
`src/economics/domain/economic-scenario.*`
`src/economics/kernel/economic-truth-kernel.*`
`src/economics/kernel/max-cost.*`
`src/economics/kernel/break-even.*`
`src/economics/uncertainty/profit-envelope.*`
`src/economics/uncertainty/profit-breaker-map.*`
`src/hunter/domain/recommendation.*`
`src/hunter/domain/opportunity.*`
`src/hunter/decision/hunter-decision-graph.*`
`src/hunter/decision/next-evidence-action.*`
`src/hunter/portfolio/capital-aware-queue.*`
`src/procurement/domain/procurement-order.*`
`src/procurement/domain/procurement-evidence-packet.*`
`src/procurement/services/capital-reservation.*`
`src/procurement/services/quantity-safety-envelope.*`
`src/inventory/domain/inventory-lot.*`
`src/inventory/services/inventory-reconciler.*`
`src/contracts/economic-decision/economic-decision-capsule.*`
Extensions remain unresolved until stack ADR.

# Golden financial test families
1. Missing mandatory fee cannot become zero.
2. Decimal rounding is deterministic at declared boundary.
3. Unit/multipack economics remain consistent with M05 Pack Algebra.
4. MAX COST solution satisfies configured profit/margin/ROI constraints at boundary.
5. One cent above MAX COST violates at least one binding constraint, subject to rounding policy.
6. Uncertain cost capable of flipping decision is surfaced.
7. Stale critical price activates ECB.
8. High nominal ROI but capital-lock scenario can rank below faster rotation when tenant policy values turnover.
9. Capital reservation prevents double allocation.
10. Procurement receiving discrepancy does not rewrite approved purchase evidence.
11. Realized economics remain separate from projected economics.
12. Market replay reproduces the decision inputs/version known at historical time.

# Security / abuse
No marketplace/source credentials in capsules or LLM context. Tenant financial configuration isolated. Procurement mutations require authorization, idempotency and audit. AI cannot execute procurement directly. External market text is untrusted input.

# Codex context minimization
Implementation slices should receive only owning module contract, Economic Decision Capsule schema, relevant upstream AEC/uncertainty contracts, exact formula/test cases, file manifest and ADRs. Do not provide all 76 module documents to a slice.
