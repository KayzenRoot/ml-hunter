# M01 — Product Vision, Operator & SaaS Evolution

Status: PLAN-IN-PROGRESS
Wave: A — Product Truth & Governance

## Purpose
Define the immutable product intent that every ML Hunter V1 module must serve.

## Product thesis
ML Hunter is a category-agnostic commerce opportunity intelligence and management platform. It continuously discovers legitimate acquisition opportunities, maps products to marketplace demand and competition, computes complete economics, helps allocate capital, assists sourcing/publishing/operations, protects profitability after listing, learns from realized outcomes, and exposes evidence-grounded intelligence to sellers.

The first operational vertical is Brazilian grocery/wholesale sourcing around the configured operator region, with Mercado Livre as the first marketplace. The architecture must not hard-code grocery, one geography, one supplier type, or one marketplace into domain foundations.

## V1 scope decision
All capabilities approved in the governed feature universe are V1 scope. V1 is intentionally broad and modular. A later V2 is not used as a dumping ground for currently approved V1 capabilities.

## Primary jobs to be done
1. Find products worth investigating without manual marketplace hunting.
2. Discover legitimate local/online acquisition sources and comparable offers.
3. Determine canonical product identity and confidence.
4. Estimate demand, competition and market attractiveness using observable evidence.
5. Compute true expected profit, margin, ROI, break-even, capital requirement and time-to-cash.
6. Recommend whether/how much to test while exposing evidence, uncertainty and risk.
7. Support procurement, inventory, listing, pricing, replenishment and lifecycle decisions.
8. Protect active profit through Profit Guard, repricing, pause/reactivation and alerts.
9. Analyze competitors/sellers/products/categories/keywords without presenting private unknowable facts as truth.
10. Manage actual business performance from a tenant cockpit.
11. Compare projected versus realized economics and learn from outcomes.
12. Help recover trapped capital, leakage, refunds and other avoidable economic losses.
13. Provide a safe AI copilot over structured governed tools and evidence.
14. Support SaaS administration, entitlements, support, security and future multi-tenant operation.

## Product North Star
Turn trustworthy market + sourcing evidence into profitable, explainable and safe next actions while minimizing the user's research effort and the platform's cost to produce useful intelligence.

## Decision hierarchy
When goals conflict, V1 prioritizes:
1. safety / legal / tenant isolation;
2. financial truth and evidence integrity;
3. prevention of irreversible economic harm;
4. user profit and capital efficiency;
5. recommendation quality and explainability;
6. freshness and coverage;
7. automation convenience;
8. platform operating cost;
9. cosmetic sophistication.

## Initial operator boundary
- Initial real operator: one seller / primary tenant.
- Initial sourcing emphasis: grocery/wholesale because it is practical for real validation.
- Initial marketplace: Mercado Livre Brazil.
- Initial automation posture: recommendation-first with explicit approval for consequential actions until module-specific safety gates justify assisted/autopilot modes.
- Initial cost posture: R$0 or near-R$0 incremental API/data/AI spend for the first operating period where feasible.

## SaaS evolution
Foundations must support future tenants, users, teams, regions, categories, suppliers, marketplaces, plans and entitlements without forcing all enterprise complexity into the first runtime deployment.

Shared/public intelligence may be reusable across tenants when legally and contractually permitted. Tenant-private data includes credentials, cost assumptions, purchases, inventory, listings, orders, financials, strategies, automation policies and private business outcomes.

## AI operating model
AI is first-class but not the financial source of truth. Deterministic engines own calculations and hard policy guards. AI interprets evidence, summarizes, classifies, assists ambiguous matching, explores scenarios and recommends actions. Cheapest-adequate-model, provider portability, caching, structured outputs, abstention and deterministic fallback are mandatory design principles.

## Business-management objective
ML Hunter must evolve beyond discovery into a closed commercial learning loop:

DISCOVER → ANALYZE → SOURCE → BUY → LIST → PRICE/ADVERTISE → SELL → FULFILL → RECONCILE → MEASURE REAL PROFIT → LEARN → REINVEST.

## Success dimensions
Detailed targets are deferred to requirements planning, but V1 must measure at least:
- time to first trustworthy opportunity;
- opportunity precision / false-positive rate;
- identity-match confidence;
- source and market freshness;
- projected-vs-realized profit error;
- realized net profit and ROI;
- capital turnover / time-to-cash;
- prevented-loss events from commercial guards;
- recovered profit/leakage/capital;
- recommendation acceptance/outcome quality;
- AI abstention/grounding quality;
- API/AI/platform cost per useful outcome;
- activation and time-to-realized-value;
- synchronization/reconciliation correctness;
- security and tenant-isolation evidence.

## Explicit non-goals / prohibited product assumptions
- guaranteed profit;
- fabrication of competitor private sales, costs or margins;
- bypassing marketplace/source policies;
- quota evasion, fake identities or unauthorized access;
- fully autonomous purchasing without a separately accepted safety model;
- LLM-generated financial truth;
- hard-coded grocery-only architecture;
- hard-coded single-city architecture;
- hard-coded single-provider AI dependency;
- dual-writer commerce integrations without explicit ownership/reconciliation;
- presenting stale or estimated data as current observed truth.

## Core invariants
- Every material recommendation must be traceable to evidence and calculation/model versions.
- Observed, derived, estimated and unknown facts remain distinguishable.
- Financial mutations obey tenant policy and deterministic guards.
- Tenant-private data cannot cross tenant boundaries.
- External data is untrusted input, including text later supplied to AI.
- Missing evidence is UNKNOWN, not an invented value.
- Automation must be reversible where possible and auditable always.
- Marketplace/supplier capabilities are capability-discovered, not assumed.

## Dependencies
Upstream: GEF governance, approved macro discovery.
Downstream: all V1 modules.

## Open questions to resolve in later modules
- exact commercial pricing/plans;
- final infrastructure topology;
- exact marketplace/source API capabilities and legal boundaries;
- exact tax/accounting rules supplied by operator/accountant;
- final scoring formulas and model weights;
- final automation thresholds;
- final paid-provider migration triggers.

## M01 STOP CONDITION
M01 becomes PLAN-COMPLETE when its requirements, domain vocabulary, UX principles, data/truth principles, security principles, test intent, decisions, file map and Codex context are mutually consistent and traceable, with no HIGH/CRITICAL unresolved product-vision ambiguity.
