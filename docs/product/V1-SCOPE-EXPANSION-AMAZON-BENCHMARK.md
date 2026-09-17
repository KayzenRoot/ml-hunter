# ML Hunter V1 — Advanced Marketplace Intelligence Expansion

Status: ACCEPTED FOR V1 DISCOVERY
Governed increment: `MLH-WO-0002-PRODUCT-DISCOVERY`

## Scope decision
All capabilities accepted during the current planning program are part of ML Hunter V1. V1 is intentionally a comprehensive first production product, not a reduced feature MVP. V2 is deferred until V1 has been built, validated and operated.

The implementation remains modular and phased internally. `V1 scope` does not mean every subsystem must be coded simultaneously; it means accepted capabilities are not silently postponed to V2.

## Benchmark doctrine
ML Hunter will continuously benchmark leading Amazon seller-intelligence products such as Helium 10, Jungle Scout, SellerAmp SAS, SmartScout, Keepa, DataHawk, AMZScout and adjacent products. We adopt useful problem-solving patterns, not proprietary code, branding, protected datasets or unsupported claims.

Benchmark result classification: `ADOPT`, `ADAPT`, `IMPROVE`, `INVENT`, `REJECT`.

The product objective is actionability: help the operator discover better opportunities, buy at better effective cost, allocate capital more intelligently, protect margin, sell faster and reduce avoidable losses.

## New V1 modules

### M42 — Marketplace Spy & Competitive Intelligence Fabric
Purpose: make competitor intelligence a first-class evidence system rather than a single seller lookup screen.
Sessions: market definition; seller watchlists; storefront reverse research; brand coverage; category/subcategory intelligence; comparable-offer graph; competitor discovery; seller/product relationship graph; price/offer history; catalog competition; reputation/review/question signals where legitimately available; competitor change detection; market-share proxies; concentration; entrant/exit detection; seller growth signals; competitive event timeline; evidence/confidence model; AI competitor brief; privacy/API/ToS boundaries.

### M43 — Demand, Search & Trend Intelligence
Purpose: detect what buyers appear to want before sourcing capital is committed.
Sessions: query/keyword universe; keyword-product graph; rank/history; organic-vs-sponsored signals where legitimately available; search trend/seasonality; category momentum; review velocity; question velocity; price elasticity evidence; emerging products; emerging brands; trend acceleration/deceleration; demand confidence; demand anomaly detection; cross-category trend propagation; AI demand interpretation; alerting.

### M44 — Reverse Sourcing & Supplier Discovery
Purpose: start from marketplace demand/competitors and work backward to acquisition sources.
Sessions: seller-to-product extraction; product identity normalization; GTIN/MPN matching; supplier graph lookup; local source matching; online distributor matching; wholesale source matching; source confidence; MOQ; landed cost; supplier history; alternative supplier search; supplier substitution; source diversification; competitor-product reverse sourcing; bulk reverse sourcing; AI sourcing research; procurement handoff.

### M45 — Product Relationship & Basket Graph
Inspired by marketplace traffic/frequently-bought-together concepts, adapted to evidence actually available in target marketplaces.
Sessions: complementary-product graph; substitute-product graph; brand relationships; category adjacency; bundle candidates; kit economics; cross-sell opportunities; cannibalization; attach-rate proxies where supported; graph confidence; local-source matching; bundle profitability; bundle competition; AI bundle discovery.

### M46 — Advanced Opportunity Discovery Lab
Purpose: search the opportunity space rather than waiting for a known SKU.
Sessions: saved searches; reusable strategy templates; multi-dimensional filters; demand-vs-competition matrix; margin/ROI filters; price-history filters; seller-count filters; review/rating opportunity gaps; listing-quality gaps; category growth; new-entry detection; out-of-stock opportunity signals where supported; supplier-available filter; local-availability filter; capital-required filter; time-to-cash estimate; risk filter; explainable Opportunity Score; batch candidate generation; discovery history.

### M47 — Capital Allocation & Portfolio Intelligence
Purpose: optimize the use of finite working capital across multiple opportunities.
Sessions: available-capital model; cash reserve; product allocation; diversification; category exposure; supplier exposure; concentration limits; expected ROI; expected contribution profit; time-to-cash; liquidity risk; downside scenario; inventory carrying cost; reorder capital; portfolio simulation; what-if scenarios; recommended test lots; realized-vs-planned allocation; AI explanation.

### M48 — Inventory Velocity, Replenishment & Capital Rescue
Purpose: keep profitable products in stock while releasing capital from weak inventory.
Sessions: sales velocity; days of cover; reorder point; lead time; safety stock; replenishment quantity; supplier recheck; stockout risk; overstock risk; aging inventory; dead-stock detection; markdown simulation; liquidation recommendation; bundle rescue; no-rebuy list; opportunity recovery; capital-release estimate; replenishment alerts; realized outcomes.

### M49 — Profit Leakage & Business Optimization Engine
Purpose: find where expected profit is being lost after sourcing/listing.
Sessions: projected-vs-realized economics; fee variance; tax variance; shipping variance; acquisition variance; packaging variance; discount leakage; return/refund loss; cancellation loss; stockout opportunity cost; dead-stock carrying cost; repricing loss; listing underperformance; source deterioration; per-product leakage; per-category leakage; tenant-level leakage; ranked corrective actions; AI root-cause brief.

### M50 — Dynamic Pricing, Competition & Margin Defense
Purpose: continuously protect contribution margin while remaining competitively positioned.
Sessions: acquisition-price refresh; marketplace-price refresh; catalog competition state; target price; safe price floor; minimum profit; minimum margin; minimum ROI; price-to-compete evidence; repricing policy; pause policy; reactivate policy; hysteresis/cooldown; max-change limits; stale-data guard; stock-aware pricing; competitor-event response; approval modes; autopilot modes; kill switch; audit trail; notifications; outcome measurement.

### M51 — Product Risk, Eligibility & Sellability Guard
Adapt the Amazon sourcing-tool concept of buy/no-buy warnings to Mercado Livre/Brazil and future marketplaces.
Sessions: listing eligibility; category restrictions; brand/IP risk evidence; dangerous/hazardous goods classification where relevant; regulated products; expiration/perishability; fragile/high-return products; warranty risk; counterfeit-risk signals; fiscal/NCM concerns; shipping restrictions; marketplace-policy risk; source authenticity/provenance; risk severity; abstention/manual-review gates; explainable warnings.

### M52 — Listing Quality, Conversion & Visibility Intelligence
Purpose: identify why an otherwise attractive product may fail to convert.
Sessions: title quality; attributes completeness; image quality; description quality; category correctness; catalog linkage; price competitiveness; reputation/logistics context; review/rating context; keyword coverage; competitor listing comparison; visibility history where supported; conversion proxies; listing anomaly detection; prioritized fixes; AI listing optimizer; before/after measurement.

### M53 — Hunter Timeline & Historical Data Moat
Purpose: create a proprietary temporal intelligence layer from legally obtained observations and tenant outcomes.
Sessions: local price history; supplier history; marketplace price history; offer-count history; competitor history; category history; demand-signal history; keyword history; listing history; recommendation history; procurement history; sales history; fee history; realized profit history; event correlation; snapshot compression; retention; provenance; replay/backtesting API.

### M54 — Next Best Action & Money Radar
Purpose: translate complexity into an ordered action queue expressed in expected business impact.
Sessions: BUY; TEST; REPLENISH; REPRICE; PAUSE; REACTIVATE; LIQUIDATE; BUNDLE; IMPROVE LISTING; WATCH; DO NOTHING; urgency; expected financial impact; capital required; confidence; evidence; deadline/decay; action dependencies; user approval; automation policy; action history; realized impact.

### M55 — Hunter Learning & Outcome Feedback Loop
Purpose: learn from the tenant's actual commercial outcomes without allowing ML/LLM estimates to overwrite accounting truth.
Sessions: recommendation outcome; purchase outcome; listing outcome; sale outcome; time-to-sale; actual fees; actual logistics; returns; actual profit; forecast error; source reliability learning; category learning; strategy learning; tenant-specific calibration; global anonymized/aggregated learning boundaries; backtesting; model evaluation; drift; rollback; human feedback.

### M56 — Mobile & In-Store Sourcing Companion
Purpose: make ML Hunter useful while physically sourcing products.
Sessions: barcode/EAN scan; camera-assisted identity; fast product lookup; local acquisition price entry; instant profit/ROI; competition snapshot; sellability warnings; Hunter Score; max-cost; break-even; suggested quantity; nearby alternative sources; offline/poor-network mode; scan history; shopping list; Telegram/share; procurement confirmation.

### M57 — Strategy Studio & Saved Hunters
Purpose: allow beginners and advanced sellers to encode repeatable sourcing strategies.
Sessions: visual strategy builder; saved filters; strategy templates; category-specific strategies; capital constraints; margin/ROI objectives; risk tolerance; supplier rules; marketplace rules; geographic rules; freshness rules; notification rules; scheduled Hunters; simulation; backtest; compare strategies; clone/share within tenant/team; strategy versioning.

## Proprietary technology candidates
These names are working concepts, not marketing commitments.

### Hunter Opportunity Graph (HOG)
Graph joining products, GTIN/MPN, categories, brands, sellers, listings, search terms, suppliers, stores, prices, offers, opportunities and outcomes. Enables relationship-aware discovery rather than isolated SKU analysis.

### Bidirectional Sourcing Engine (BSE)
Runs both `source -> marketplace` and `marketplace -> source` discovery, then merges evidence into a Double Confirmation signal when independent discovery paths converge.

### Profit Truth Engine (PTE)
Deterministic economic engine that owns acquisition, fees, taxes, logistics, packaging, returns allowance, capital and realized-profit calculations. LLM output cannot overwrite PTE facts.

### Opportunity Decay Model (ODM)
Reduces confidence/value of opportunities as price, demand, source or competition evidence becomes stale.

### Market Pressure Index (MPI)
Composite, explainable measure of competitive pressure using only legitimately observable evidence. It must expose components rather than masquerade as known competitor economics.

### Source Reliability Genome (SRG)
Historical source profile combining freshness, price stability, stock reliability, collector reliability, MOQ, fulfillment and realized acquisition outcomes.

### Time-to-Cash Engine (TCE)
Estimates how long capital may remain tied up and uses that estimate alongside ROI. A lower-margin fast-turn opportunity may outrank a higher-margin slow-turn opportunity when financially justified.

### Profit Leakage Radar (PLR)
Continuously compares forecast economics with actual operational ledger data and ranks the causes of lost contribution profit.

### Hunter Learning Loop (HLL)
Connects recommendation -> procurement -> listing -> sale -> fees -> returns -> realized profit -> forecast error -> calibrated future ranking.

### Evidence Confidence Fabric (ECF)
Every derived insight carries provenance, observation time, confidence, estimation method and known limitations. Observed, calculated, estimated and unknown values are never silently mixed.

## UX doctrine
The primary UX is not a wall of analytics. It is a decision system.

The tenant should always be able to answer:
1. Where can I make money now?
2. How much capital is required?
3. What can go wrong?
4. How confident is the evidence?
5. What should I do next?
6. What changed since yesterday?
7. Where am I losing money?
8. What should I stop doing?

## V1 architecture implication
The V1 feature surface is now large. Therefore modularity, bounded contexts, explicit contracts, asynchronous jobs, feature flags, observability, independent testing and context-efficient Codex work packages are mandatory architecture requirements, not optional engineering polish.

V1 delivery should use internal release slices while preserving one V1 scope. Suggested implementation trains include Foundation, Data/Sourcing, Marketplace Intelligence, Economics/Hunter, Commerce Automation, Business Operations, AI, Admin/SaaS and Mobile. This avoids a monolithic big-bang implementation while honoring the accepted V1 scope.
