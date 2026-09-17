# ML Hunter — Planning Module Index

Status: DISCOVERY IN PROGRESS
Governed increment: `MLH-WO-0002-PRODUCT-DISCOVERY`

## Product North Star
ML Hunter is a planned zero/near-zero-cost-first local-to-marketplace opportunity intelligence and commerce-management system. It discovers purchasable products from legitimate local retail/wholesale sources, normalizes identity/media, compares true acquisition cost with Mercado Livre economics, ranks opportunities by expected net profit/risk, assists decisions with a cost-controlled LLM intelligence layer, and prepares/publishes approved products through governed integrations. Initial operation is single-user; architecture is SaaS-ready for CEP/radius-based multi-region, multi-tenant operation.

## Non-negotiable discovery constraints
- First 1–2 months should operate at R$0 or near-R$0 incremental data/API/AI spend where feasible.
- Prefer legitimate free APIs, public datasets, first-party catalogs/offers and compliant collectors; never design quota evasion or fake identities/keys.
- Every external source has independent rate-limit, cache, provenance, freshness, health and fallback policy.
- LLM usage is cache-first, budget-gated and provider-agnostic; deterministic engines remain authoritative for financial calculations.
- Cheapest adequate model wins each AI task after benchmark, not by brand preference. Provider/model routing must be replaceable without rewriting product modules.
- Stable/repeated prompt context should be designed for provider-supported prompt/input caching; application-level semantic/result cache avoids duplicate inference.
- AI recommendations must cite/trace the structured evidence supplied to the model and expose confidence/limitations. AI never fabricates financial facts.
- Product identity should converge on GTIN/EAN/SKU/canonical product records when evidence allows.
- Store source, store/location, timestamp, price type, minimum quantity and validity/provenance for every observed price.
- Images and product metadata require source/provenance and rights/usage review before republishing.
- Profitability uses current marketplace fees/logistics/taxes/configured operating costs rather than simplistic purchase-vs-sale subtraction.
- No irreversible publication/purchase action is automatic by default during V1 discovery; user approval gates remain until explicitly superseded.
- Architecture must be SaaS-ready without forcing paid multi-tenant infrastructure during personal-use V1.
- Platform administration and tenant dashboards are first-class product surfaces, not afterthoughts.
- Domain boundaries/harness must isolate collectors, catalog, market intelligence, finance, AI, integrations, tenancy, admin and UI to reduce blast radius and simplify testing/debugging.

## Planning modules and sessions

### M01 — Product Vision, Operator & SaaS Evolution
Sessions: M01.1 initial operator problem; M01.2 jobs-to-be-done; M01.3 V1 success metrics; M01.4 personal-use boundary; M01.5 future SaaS personas; M01.6 tenancy evolution; M01.7 explicit non-goals; M01.8 AI-assisted operating model; M01.9 business-management objective.

### M02 — Zero-Cost Data Source Strategy
Sessions: M02.1 source taxonomy; M02.2 free API inventory; M02.3 first-party catalog inventory; M02.4 public/open datasets; M02.5 quota/rate-limit budget; M02.6 cache-first policy; M02.7 fallback/degradation; M02.8 source legal/ToS review.

### M03 — Retailer & Wholesaler Collector Platform
Sessions: M03.1 collector contract; M03.2 Atacadão; M03.3 Roldão; M03.4 Tenda; M03.5 Assaí; M03.6 Carrefour/other chains; M03.7 smaller local stores; M03.8 anti-breakage/adapters; M03.9 scheduler; M03.10 health/observability; M03.11 provenance/freshness.

### M04 — Geography, CEP & Store Discovery
Sessions: M04.1 CEP input; M04.2 geocoding/provider strategy; M04.3 radius/travel-distance model; M04.4 store locator; M04.5 coverage zones; M04.6 user-selected stores; M04.7 future multi-region tenancy.

### M05 — Product Identity & Catalog Intelligence
Sessions: M05.1 GTIN/EAN model; M05.2 Open Food Facts; M05.3 Cosmos/other enrichment; M05.4 canonical product model; M05.5 deterministic/fuzzy matching; M05.6 AI-assisted ambiguous matching; M05.7 variants/pack sizes; M05.8 NCM/category/tax metadata; M05.9 confidence scoring; M05.10 deduplication.

### M06 — Images & Product Media
Sessions: M06.1 image source priority; M06.2 provenance/rights; M06.3 image quality; M06.4 deduplication; M06.5 local/object cache; M06.6 marketplace-ready media; M06.7 missing-image workflow.

### M07 — Local Price Intelligence
Sessions: M07.1 price observation schema; M07.2 retail vs wholesale tiers; M07.3 minimum purchase quantities; M07.4 promotions/validity; M07.5 unit-price normalization; M07.6 price history; M07.7 stale/outlier detection; M07.8 basket/acquisition cost.

### M08 — Mercado Livre Market & Demand Intelligence
Sessions: M08.1 official API/auth; M08.2 catalog/product search; M08.3 comparable listing matching; M08.4 price signals; M08.5 seller/competition signals allowed by API; M08.6 demand/liquidity evidence; M08.7 category/attributes; M08.8 listing types; M08.9 logistics; M08.10 quotas/cache; M08.11 change notifications; M08.12 AI market interpretation.

### M09 — Profit, Margin & Opportunity Engine
Sessions: M09.1 acquisition cost; M09.2 Mercado Livre selling fees; M09.3 fixed fees; M09.4 shipping/logistics; M09.5 taxes configurable by operator; M09.6 packaging; M09.7 travel/procurement allocation; M09.8 expected returns/loss allowance; M09.9 contribution margin; M09.10 ROI; M09.11 break-even; M09.12 capital required; M09.13 sensitivity analysis; M09.14 confidence/risk score; M09.15 realized-vs-projected profit.

### M10 — Ranking, Hunter & Decision Engine
Sessions: M10.1 opportunity candidate generation; M10.2 profitability filters; M10.3 liquidity/demand evidence; M10.4 competition; M10.5 capital efficiency; M10.6 freshness/confidence; M10.7 risk penalties; M10.8 explainable ranking; M10.9 AI recommendation; M10.10 suggested test quantity; M10.11 watchlists/alerts; M10.12 recommendation outcome feedback loop.

### M11 — Procurement & Inventory Workflow
Sessions: M11.1 shopping/procurement list; M11.2 store route grouping; M11.3 planned quantity; M11.4 capital budget; M11.5 actual purchase price; M11.6 lot/expiry where relevant; M11.7 inventory handoff; M11.8 reconciliation.

### M12 — Bling Integration
Sessions: M12.1 current Bling API capabilities; M12.2 OAuth/credentials; M12.3 product create/update; M12.4 SKU/GTIN mapping; M12.5 cost/stock; M12.6 fiscal fields/NCM; M12.7 images where supported; M12.8 orders/sales/financial data availability; M12.9 webhooks/sync; M12.10 error/retry/idempotency; M12.11 audit trail.

### M13 — Mercado Livre Publishing, Orders & Sync
Sessions: M13.1 direct Mercado Livre path; M13.2 Bling-mediated path; M13.3 decision matrix; M13.4 draft generation; M13.5 category/attributes; M13.6 AI-assisted title/description/media guidance; M13.7 price/stock; M13.8 user approval gate; M13.9 publish; M13.10 orders/sales signals; M13.11 sync/reconciliation; M13.12 rollback/pause.

### M14 — Fiscal, Financial & Operational Ledger
Sessions: M14.1 business/account configuration; M14.2 tax inputs as configurable data; M14.3 invoice responsibility; M14.4 Bling/certificate boundary; M14.5 cost ledger; M14.6 fee ledger; M14.7 sales/revenue ledger; M14.8 realized profit; M14.9 cash/capital tracking; M14.10 auditability; M14.11 accountant-validation boundary.

### M15 — Tenant Cockpit, Analytics & Business UX
Sessions: M15.1 information architecture; M15.2 executive cockpit; M15.3 opportunity feed; M15.4 product detail; M15.5 comparison view; M15.6 profit simulator; M15.7 map/store view; M15.8 procurement view; M15.9 listings/inventory; M15.10 sales/orders; M15.11 revenue/gross/net profit; M15.12 fees/taxes/logistics; M15.13 realized-vs-projected margin; M15.14 product/category performance; M15.15 capital/ROI; M15.16 source health; M15.17 alerts; M15.18 AI copilot/chat; M15.19 customizable periods/filters; M15.20 responsive UX.

### M16 — Settings & User Configuration
Sessions: M16.1 CEP/radius; M16.2 stores/sources; M16.3 minimum margin/ROI; M16.4 capital budget; M16.5 cost assumptions; M16.6 Mercado Livre credentials; M16.7 Bling credentials; M16.8 AI budget/model policy; M16.9 notification settings; M16.10 safety controls.

### M17 — SaaS & Multi-Tenant Foundation
Sessions: M17.1 tenant model; M17.2 user/role model; M17.3 tenant isolation; M17.4 per-tenant integrations/secrets; M17.5 quotas/fair use; M17.6 subscription-ready boundaries; M17.7 shared-vs-private data; M17.8 onboarding; M17.9 migration from single-user V1; M17.10 tenant usage/cost metering.

### M18 — Data Architecture & Storage
Sessions: M18.1 entities; M18.2 product/GTIN graph; M18.3 stores/geography; M18.4 price observations; M18.5 marketplace snapshots; M18.6 opportunity snapshots; M18.7 orders/sales/fees ledger; M18.8 AI inference/evidence ledger; M18.9 temporal/history strategy; M18.10 cache; M18.11 retention; M18.12 backups/export.

### M19 — Modular Harness, Backend, Jobs & Integration Architecture
Sessions: M19.1 bounded contexts/module map; M19.2 public contracts/interfaces; M19.3 dependency rules; M19.4 API boundaries; M19.5 worker/scheduler; M19.6 source adapters; M19.7 queues; M19.8 idempotency; M19.9 retries/backoff; M19.10 rate limiting; M19.11 circuit breakers; M19.12 webhooks; M19.13 reconciliation; M19.14 feature flags; M19.15 module-level diagnostics; M19.16 failure isolation; M19.17 context packs/work-order mapping for Codex.

### M20 — Security, Privacy & Secrets
Sessions: M20.1 threat model; M20.2 OAuth tokens; M20.3 Bling/ML/LLM secrets; M20.4 encryption; M20.5 least privilege; M20.6 tenant isolation; M20.7 admin privilege boundaries; M20.8 audit logs; M20.9 data privacy/LGPD; M20.10 credential rotation/revocation.

### M21 — Compliance, Source Policy & Responsible Collection
Sessions: M21.1 robots/ToS review; M21.2 API license; M21.3 dataset license; M21.4 image/content rights; M21.5 collector pacing; M21.6 source opt-out/disable; M21.7 provenance; M21.8 policy change response.

### M22 — Reliability, Observability & Data Quality
Sessions: M22.1 health checks; M22.2 structured logs; M22.3 metrics; M22.4 source freshness; M22.5 collector breakage; M22.6 module health; M22.7 data-quality rules; M22.8 anomaly detection; M22.9 AI quality/drift; M22.10 alerting; M22.11 SLOs; M22.12 recovery.

### M23 — Testing, Evaluation & Benchmarking
Sessions: M23.1 unit tests; M23.2 contract tests; M23.3 collector fixtures; M23.4 integration tests; M23.5 profitability golden cases; M23.6 data-quality tests; M23.7 E2E; M23.8 load/quota tests; M23.9 security tests; M23.10 module regression benchmarks; M23.11 AI eval dataset; M23.12 provider/model quality-cost benchmark; M23.13 recommendation backtesting.

### M24 — Zero-Cost Infrastructure & Deployment
Sessions: M24.1 local-first V1; M24.2 free-tier options; M24.3 Docker/dev environment; M24.4 scheduled collection; M24.5 database/storage budget; M24.6 image cache budget; M24.7 CI/CD budget; M24.8 AI gateway/runtime budget; M24.9 backups; M24.10 paid-scale migration triggers.

### M25 — Performance, Quotas & FinOps
Sessions: M25.1 request budget; M25.2 API quota ledger; M25.3 caching ratios; M25.4 incremental scans; M25.5 storage growth; M25.6 compute budget; M25.7 cost-per-opportunity; M25.8 LLM token/call budget; M25.9 prompt-cache hit ratio; M25.10 semantic/result-cache hit ratio; M25.11 cost per AI recommendation; M25.12 per-tenant cost attribution; M25.13 paid API/AI break-even thresholds.

### M26 — Platform Admin Control Center
Sessions: M26.1 global admin dashboard; M26.2 tenant/user directory; M26.3 user/tenant detail; M26.4 roles/access/support controls; M26.5 feature flags and functionality controls; M26.6 source/collector administration; M26.7 integration health; M26.8 global sales/GMV/revenue analytics where permitted; M26.9 subscription/plan/entitlement readiness; M26.10 tenant/API/AI usage and cost; M26.11 platform financials/FinOps; M26.12 source/API quotas; M26.13 jobs/queues/errors; M26.14 audit/security events; M26.15 support diagnostics/impersonation design with explicit security controls; M26.16 tenant suspension/reactivation; M26.17 announcements/maintenance; M26.18 system configuration; M26.19 admin observability; M26.20 export/reporting.

### M27 — Notifications & Automation
Sessions: M27.1 opportunity alerts; M27.2 price-drop alerts; M27.3 source-failure alerts; M27.4 listing/inventory alerts; M27.5 sales/business alerts; M27.6 channels; M27.7 digest; M27.8 AI-generated daily business brief; M27.9 automation safety; M27.10 future auto-actions.

### M28 — AI Intelligence, Decision Copilot & Model Router
Classification: NECESSARY for V1, cost-gated and degradation-safe.
Sessions: M28.1 AI responsibility boundaries; M28.2 cheapest-adequate-model policy; M28.3 provider-agnostic AI gateway; M28.4 model/provider registry; M28.5 task-based routing; M28.6 deterministic/no-LLM fallback; M28.7 prompt/context architecture; M28.8 provider prompt/input caching; M28.9 application semantic/result caching; M28.10 cache keys/versioning/invalidation; M28.11 structured outputs/tool contracts; M28.12 market/demand analysis; M28.13 opportunity recommendation; M28.14 explainability/evidence grounding; M28.15 business copilot/chat; M28.16 listing content assistance; M28.17 ambiguous product matching; M28.18 hallucination/unsupported-claim guards; M28.19 confidence/abstention; M28.20 token/cost budgets; M28.21 per-tenant AI quotas; M28.22 provider fallback/circuit breaker; M28.23 asynchronous/batch inference; M28.24 model benchmark/evals; M28.25 recommendation feedback/backtesting; M28.26 privacy/retention; M28.27 admin AI controls; M28.28 future local-model option.

### M29 — Release, Migration & Rollout
Sessions: M29.1 alpha; M29.2 personal production V1; M29.3 data migration; M29.4 integration migration; M29.5 rollback; M29.6 SaaS beta readiness; M29.7 versioning/release evidence.

### M30 — Final Architecture & Codex Handoff
Sessions: M30.1 accepted requirements matrix; M30.2 ADR closure; M30.3 bounded-context/component map; M30.4 dependency graph; M30.5 schema contracts; M30.6 API contracts; M30.7 UI/admin contracts; M30.8 implementation slices; M30.9 Codex context packs; M30.10 work orders; M30.11 pre-code audit and STOP CONDITION.

## Cross-cutting architecture tracks
1. Zero-cost-first economics and migration triggers.
2. Data provenance, freshness and collector compliance.
3. Deterministic financial truth plus AI interpretation.
4. AI cost minimization through cheapest-adequate routing, prompt caching, semantic/result caching, batch/asynchronous work and strict budgets.
5. Tenant-aware data boundaries from V1.
6. Separate Tenant Cockpit and Platform Admin Control Center.
7. Modular harness with explicit contracts, dependency rules, diagnostics and failure isolation.
8. Financial observability at product, tenant and platform levels.
9. Evidence-backed recommendations and realized-outcome feedback.

## Planning cadence
Each module is discussed before acceptance. Decisions are classified `NECESSARY`, `IMPORTANT`, `FUTURE`, or `OUT_OF_SCOPE`. Accepted decisions are promoted to canonical documentation through governed deltas. No product implementation begins merely because a feature appears in this index.

## Initial architecture hypothesis, not yet accepted
The product should likely separate Source/Collector adapters, canonical catalog, price observations, marketplace intelligence, deterministic finance/profit engine, AI gateway/decision assistance, publishing/integration orchestration, tenant business analytics, platform administration, and UI/API. Domain modules should communicate through explicit contracts and preserve tenant-aware identifiers/boundaries. This remains an option pending requirements and ADR review.

## Integration research note — 2026-09-17
Bling and Mercado Livre remain candidate operational/data sources for product, stock, listings, orders, sales, fees and financial analytics. M12-M14 must determine which system is authoritative for each datum and avoid double counting. Dashboard metrics must expose provenance and reconciliation state.

## Current discovery status
User-approved direction captured: personal-use first; future SaaS/multi-tenant; CEP/region configuration; zero-cost-first data strategy; high-quality collectors; complete product record with image; full profitability analysis; Mercado Livre/Bling integrations; automatic listing workflow desired with safety/approval design to be decided; AI is NECESSARY for V1; cheapest adequate LLM and aggressive legitimate caching are required; platform admin requires broad operational/financial control; every tenant requires a rich business cockpit; modular harness/failure isolation is required.

Next planning action: begin `M01 — Product Vision, Operator & SaaS Evolution`, then proceed module-by-module under GEF.
