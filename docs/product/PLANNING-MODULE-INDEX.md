# ML Hunter — Planning Module Index

Status: DISCOVERY IN PROGRESS
Governed increment: `MLH-WO-0002-PRODUCT-DISCOVERY`

## Product North Star
ML Hunter is planned as a zero/near-zero-cost-first local-to-marketplace opportunity intelligence system. It discovers purchasable products from legitimate local retail/wholesale data sources, normalizes product identity and images, compares the true acquisition cost with Mercado Livre economics, ranks opportunities by expected net profit and risk, and can prepare/publish approved products through governed integrations. Initial operation is single-user and centered on the user's chosen region; the product is designed from the beginning for future CEP/radius-based multi-region and multi-tenant SaaS operation.

## Non-negotiable discovery constraints
- First 1–2 months must be operable with R$0 or near-R$0 incremental data/API spend where feasible.
- Prefer legitimate free APIs, public datasets, first-party catalog/offers and compliant collectors; never design quota evasion or fake identities/keys.
- Every external source has independent rate-limit, cache, provenance, freshness, health and fallback policy.
- Product identity should converge on GTIN/EAN/SKU/canonical product records when evidence allows.
- Store source, store/location, timestamp, price type, minimum quantity and validity/provenance for every observed price.
- Images and product metadata require source/provenance and rights/usage review before republishing.
- Profitability must use current marketplace fees/logistics/taxes/configured operating costs rather than a simplistic purchase-vs-sale subtraction.
- No irreversible publication/purchase action is automatic by default during V1 discovery; user approval gates remain for publishing until explicitly superseded.
- Architecture must be SaaS-ready without forcing paid multi-tenant infrastructure during the initial personal-use phase.

## Planning modules and sessions

### M01 — Product Vision, Operator & SaaS Evolution
Sessions: M01.1 initial operator problem; M01.2 jobs-to-be-done; M01.3 V1 success metrics; M01.4 personal-use boundary; M01.5 future SaaS personas; M01.6 tenancy evolution; M01.7 explicit non-goals.

### M02 — Zero-Cost Data Source Strategy
Sessions: M02.1 source taxonomy; M02.2 free API inventory; M02.3 first-party catalog inventory; M02.4 public/open datasets; M02.5 quota/rate-limit budget; M02.6 cache-first policy; M02.7 fallback/degradation; M02.8 source legal/ToS review.

### M03 — Retailer & Wholesaler Collector Platform
Sessions: M03.1 collector contract; M03.2 Atacadão; M03.3 Roldão; M03.4 Tenda; M03.5 Assaí; M03.6 Carrefour/other chains; M03.7 smaller local stores; M03.8 anti-breakage/adapters; M03.9 scheduler; M03.10 health/observability; M03.11 provenance/freshness.

### M04 — Geography, CEP & Store Discovery
Sessions: M04.1 CEP input; M04.2 geocoding/provider strategy; M04.3 radius/travel-distance model; M04.4 store locator; M04.5 coverage zones; M04.6 user-selected stores; M04.7 future multi-region tenancy.

### M05 — Product Identity & Catalog Intelligence
Sessions: M05.1 GTIN/EAN model; M05.2 Open Food Facts; M05.3 Cosmos/other enrichment; M05.4 canonical product model; M05.5 fuzzy matching; M05.6 variants/pack sizes; M05.7 NCM/category/tax metadata; M05.8 confidence scoring; M05.9 deduplication.

### M06 — Images & Product Media
Sessions: M06.1 image source priority; M06.2 provenance/rights; M06.3 image quality; M06.4 deduplication; M06.5 local/object cache; M06.6 marketplace-ready media; M06.7 missing-image workflow.

### M07 — Local Price Intelligence
Sessions: M07.1 price observation schema; M07.2 retail vs wholesale tiers; M07.3 minimum purchase quantities; M07.4 promotions/validity; M07.5 unit-price normalization; M07.6 price history; M07.7 stale/outlier detection; M07.8 basket/acquisition cost.

### M08 — Mercado Livre Market Intelligence
Sessions: M08.1 official API/auth; M08.2 catalog/product search; M08.3 comparable listing matching; M08.4 price signals; M08.5 seller/competition signals allowed by API; M08.6 category/attributes; M08.7 listing types; M08.8 logistics; M08.9 API quotas/cache; M08.10 change notifications.

### M09 — Profit, Margin & Opportunity Engine
Sessions: M09.1 acquisition cost; M09.2 Mercado Livre selling fees; M09.3 fixed fees; M09.4 shipping/logistics; M09.5 taxes configurable by operator; M09.6 packaging; M09.7 travel/procurement allocation; M09.8 expected returns/loss allowance; M09.9 contribution margin; M09.10 ROI; M09.11 break-even; M09.12 capital required; M09.13 sensitivity analysis; M09.14 confidence/risk score.

### M10 — Ranking & Hunter Engine
Sessions: M10.1 opportunity candidate generation; M10.2 profitability filters; M10.3 liquidity/demand evidence; M10.4 competition; M10.5 capital efficiency; M10.6 freshness/confidence; M10.7 risk penalties; M10.8 explainable ranking; M10.9 alerts/watchlists.

### M11 — Procurement & Inventory Workflow
Sessions: M11.1 shopping/procurement list; M11.2 store route grouping; M11.3 planned quantity; M11.4 capital budget; M11.5 actual purchase price; M11.6 lot/expiry where relevant; M11.7 inventory handoff; M11.8 reconciliation.

### M12 — Bling Integration
Sessions: M12.1 current Bling API capabilities; M12.2 OAuth/credentials; M12.3 product create/update; M12.4 SKU/GTIN mapping; M12.5 cost/stock; M12.6 fiscal fields/NCM; M12.7 images where supported; M12.8 error/retry/idempotency; M12.9 audit trail.

### M13 — Mercado Livre Publishing & Sync
Sessions: M13.1 direct Mercado Livre path; M13.2 Bling-mediated path; M13.3 decision matrix; M13.4 draft generation; M13.5 category/attributes; M13.6 title/description/media; M13.7 price/stock; M13.8 user approval gate; M13.9 publish; M13.10 sync/reconciliation; M13.11 rollback/pause.

### M14 — Fiscal & Operational Model
Sessions: M14.1 business/account configuration; M14.2 tax inputs as configurable data; M14.3 invoice responsibility; M14.4 Bling/certificate boundary; M14.5 cost ledger; M14.6 auditability; M14.7 accountant-validation boundary.

### M15 — Cockpit Dashboard & UX
Sessions: M15.1 information architecture; M15.2 executive cockpit; M15.3 opportunity feed; M15.4 product detail; M15.5 comparison view; M15.6 profit simulator; M15.7 map/store view; M15.8 procurement view; M15.9 listings/inventory; M15.10 source health; M15.11 alerts; M15.12 responsive UX.

### M16 — Settings & User Configuration
Sessions: M16.1 CEP/radius; M16.2 stores/sources; M16.3 minimum margin/ROI; M16.4 capital budget; M16.5 cost assumptions; M16.6 Mercado Livre credentials; M16.7 Bling credentials; M16.8 notification settings; M16.9 safety controls.

### M17 — SaaS & Multi-Tenant Foundation
Sessions: M17.1 tenant model; M17.2 user/role model; M17.3 tenant isolation; M17.4 per-tenant integrations/secrets; M17.5 quotas/fair use; M17.6 subscription-ready boundaries; M17.7 shared-vs-private data; M17.8 onboarding; M17.9 migration from single-user V1.

### M18 — Data Architecture & Storage
Sessions: M18.1 entities; M18.2 product/GTIN graph; M18.3 stores/geography; M18.4 price observations; M18.5 marketplace snapshots; M18.6 opportunity snapshots; M18.7 temporal/history strategy; M18.8 cache; M18.9 retention; M18.10 backups/export.

### M19 — Backend, Jobs & Integration Architecture
Sessions: M19.1 API boundaries; M19.2 worker/scheduler; M19.3 source adapters; M19.4 queues; M19.5 idempotency; M19.6 retries/backoff; M19.7 rate limiting; M19.8 circuit breakers; M19.9 webhooks; M19.10 reconciliation.

### M20 — Security, Privacy & Secrets
Sessions: M20.1 threat model; M20.2 OAuth tokens; M20.3 Bling/ML secrets; M20.4 encryption; M20.5 least privilege; M20.6 tenant isolation; M20.7 audit logs; M20.8 data privacy/LGPD; M20.9 credential rotation/revocation.

### M21 — Compliance, Source Policy & Responsible Collection
Sessions: M21.1 robots/ToS review; M21.2 API license; M21.3 dataset license; M21.4 image/content rights; M21.5 collector pacing; M21.6 source opt-out/disable; M21.7 provenance; M21.8 policy change response.

### M22 — Reliability, Observability & Data Quality
Sessions: M22.1 health checks; M22.2 logs; M22.3 metrics; M22.4 source freshness; M22.5 collector breakage; M22.6 data-quality rules; M22.7 anomaly detection; M22.8 alerting; M22.9 SLOs; M22.10 recovery.

### M23 — Testing & Benchmarking
Sessions: M23.1 unit tests; M23.2 contract tests; M23.3 collector fixtures; M23.4 integration tests; M23.5 profitability golden cases; M23.6 data-quality tests; M23.7 E2E; M23.8 load/quota tests; M23.9 security tests; M23.10 regression benchmarks.

### M24 — Zero-Cost Infrastructure & Deployment
Sessions: M24.1 local-first V1; M24.2 free-tier options; M24.3 Docker/dev environment; M24.4 scheduled collection; M24.5 database/storage budget; M24.6 image cache budget; M24.7 CI/CD budget; M24.8 backups; M24.9 paid-scale migration triggers.

### M25 — Performance & Cost/FinOps
Sessions: M25.1 request budget; M25.2 API quota ledger; M25.3 caching ratios; M25.4 incremental scans; M25.5 storage growth; M25.6 compute budget; M25.7 cost-per-opportunity; M25.8 paid API break-even thresholds.

### M26 — Admin & Future SaaS Operations
Sessions: M26.1 tenant admin; M26.2 source administration; M26.3 feature flags; M26.4 quota controls; M26.5 support diagnostics; M26.6 plan entitlements; M26.7 abuse prevention; M26.8 operational dashboard.

### M27 — Notifications & Automation
Sessions: M27.1 opportunity alerts; M27.2 price-drop alerts; M27.3 source-failure alerts; M27.4 listing/inventory alerts; M27.5 channels; M27.6 digest; M27.7 automation safety; M27.8 future auto-actions.

### M28 — AI/Assistance Layer (Optional and Cost-Gated)
Sessions: M28.1 no-LLM baseline; M28.2 local/cheap enrichment; M28.3 title/description assistance; M28.4 product-match assistance; M28.5 explainability; M28.6 hallucination controls; M28.7 per-call cost budget; M28.8 future provider routing.

### M29 — Release, Migration & Rollout
Sessions: M29.1 alpha; M29.2 personal production V1; M29.3 data migration; M29.4 integration migration; M29.5 rollback; M29.6 SaaS beta readiness; M29.7 versioning/release evidence.

### M30 — Final Architecture & Codex Handoff
Sessions: M30.1 accepted requirements matrix; M30.2 ADR closure; M30.3 component boundaries; M30.4 schema contracts; M30.5 API contracts; M30.6 UI contracts; M30.7 implementation slices; M30.8 Codex context packs; M30.9 work orders; M30.10 pre-code audit and STOP CONDITION.

## Planning cadence
Each module is discussed before acceptance. Decisions are classified `NECESSARY`, `IMPORTANT`, `FUTURE`, or `OUT_OF_SCOPE`. Accepted decisions are promoted to canonical documentation through governed deltas. No product implementation begins merely because a feature appears in this index.

## Initial architecture hypothesis, not yet accepted
The product should likely separate Source/Collector adapters, canonical catalog, price observations, marketplace intelligence, profitability/opportunity engine, publishing/integration orchestration, and dashboard/API. Single-user V1 should preserve tenant-aware identifiers and boundaries so future SaaS conversion does not require a destructive rewrite. This remains an option pending requirements and ADR review.

## Integration research note — 2026-09-17
Current first-party documentation confirms that Bling can connect to Mercado Livre, create new Mercado Livre listings from Bling products, synchronize inventory, and manage marketplace listings. Mercado Livre also exposes official resources for selling fees/pricing and shipping-cost calculations. Therefore both `ML Hunter -> Bling -> Mercado Livre` and a direct `ML Hunter -> Mercado Livre` publishing path remain candidates for M12/M13. No path is accepted yet; the decision must account for fiscal/stock source-of-truth, API capabilities, failure modes, and operational simplicity.

## Current discovery status
User-approved direction captured: personal-use first; future SaaS/multi-tenant; CEP/region configuration; zero-cost-first data strategy; high-quality collectors; complete product record with image; full profitability analysis; cockpit dashboard; Mercado Livre integration; Bling integration candidate; automatic listing workflow desired with safety/approval design to be decided.

Next planning action: begin `M01 — Product Vision, Operator & SaaS Evolution`, then proceed module-by-module under GEF.
