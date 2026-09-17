# ML Hunter V1 — Final Coverage Expansion M69-M76

Status: DISCOVERY / V1 REQUIRED CAPABILITY UNIVERSE
Work Order: MLH-WO-0002-PRODUCT-DISCOVERY

## Purpose
Close the remaining macro capability gaps before freezing the ML Hunter V1 feature universe. V1 remains the complete platform currently under discovery; no product implementation is authorized by this document.

Benchmark principle: study mature seller-intelligence platforms such as Helium 10, Jungle Scout, SmartScout, DataHawk, SellerAmp and adjacent commerce platforms, then classify ideas as ADOPT / ADAPT / IMPROVE / INVENT. Never copy proprietary implementations or assume Amazon-specific capabilities exist on Mercado Livre.

## M69 — Advertising & Paid Growth Intelligence
Goal: optimize advertising for net contribution profit rather than vanity ROAS.
- Marketplace advertising capability discovery and authorization matrix.
- Campaign/ad-group/product/search-term ingestion where officially available.
- Spend, attributed revenue, TACOS/ACOS-like metrics where applicable, organic-vs-paid contribution, contribution profit after ads.
- Keyword/ad opportunity discovery linked to M34 Search Intelligence.
- Budget pacing, anomaly detection, waste detection, negative/poor-term candidates where platform permits.
- Profit-aware bid/budget recommendations.
- Inventory-aware advertising: avoid aggressively advertising products near stockout unless policy permits.
- Margin-aware advertising: acquisition-price changes propagate into advertising economics.
- Experimental campaign lab integrated with M64.
- Recommendation-only, assisted and policy-governed automation modes.
- Every write action subject to permissions, budgets, cooldowns, kill switch, audit and reconciliation.
- AI explains evidence; deterministic economics authorize actions.

Proprietary concept: **Profit-Ad Fusion Engine (PAFE)** — joins acquisition cost, marketplace fees, ads, logistics, taxes, returns and realized contribution margin so the optimization target is money retained, not merely attributed sales.

## M70 — Returns, Refunds, Claims & Revenue Recovery
Goal: protect profit after the sale and identify money that can legitimately be recovered.
- Returns/refunds/exchanges lifecycle.
- Return reason taxonomy and product/category return-rate intelligence.
- Refund reconciliation against order/payment/stock ledgers.
- Claims/disputes/reimbursement opportunities where marketplace APIs and policies permit.
- Lost/damaged/incorrect-return discrepancy tracking where applicable.
- Evidence packet generation and case timeline.
- Recovery status, amount expected, amount recovered, aging and owner.
- Product profitability includes expected and realized return/refund loss.
- Supplier-return workflow where relevant.
- Repeated-return and quality-risk detection.
- Never fabricate eligibility or automate prohibited claims.

Proprietary concept: **Revenue Recovery Radar (R3)** — continuously reconciles economic events and highlights recoverable or unexplained value leakage with evidence and confidence.

## M71 — Reputation, Reviews, Questions & Customer Experience Intelligence
Goal: turn public/authorized customer signals into product, listing and sourcing decisions.
- Reviews/ratings/questions ingestion only where legitimately available.
- Sentiment/topic clustering and recurring complaint extraction.
- Product defect/quality warning signals.
- Listing-expectation mismatch detection.
- Review velocity and rating trend where evidence supports them.
- Question/topic intelligence for listing content improvement.
- Reputation health and operational alerts.
- Compliant review-request workflows only if officially supported.
- No review manipulation, fake engagement or policy circumvention.
- Feed findings into Product Risk Guard, Listing Intelligence and Supplier Intelligence.

Proprietary concept: **Voice-to-Margin Engine (VME)** — connects customer complaint themes to returns, refunds, rating changes and realized margin loss.

## M72 — Team Collaboration, Approval & Agency Workspace
Goal: make V1 viable for multi-user sellers, teams and future agencies without weakening tenant isolation.
- Organizations, workspaces, teams and role templates.
- Fine-grained RBAC/ABAC for finance, sourcing, listing, advertising, automation, billing, security and admin functions.
- Assignment/ownership of opportunities, purchases, listings, incidents and support cases.
- Comments, mentions, notes and decision history.
- Approval chains for high-risk actions.
- Four-eyes approval option for sensitive financial/commercial mutations.
- Saved views, shared Hunters and team dashboards.
- Agency/multi-account view with explicit tenant boundaries and delegated access.
- Time-limited support/delegated access.
- Complete audit trail.

## M73 — Fraud, Abuse & Commercial Integrity
Goal: defend the platform and tenant economics from malicious or abnormal commercial behavior.
- Account takeover risk signals integrated with M58.
- Impossible/unusual commercial mutations.
- Price manipulation and extreme repricing protection.
- Promotion/coupon abuse signals where data exists.
- Suspicious automation loops.
- Abnormal API/tool usage and scraping abuse against ML Hunter itself.
- Tenant quota abuse and credential sharing signals.
- Supplier/source poisoning and anomalous price-feed detection.
- Listing hijack/counterfeit risk signals only from lawful evidence.
- Risk scoring, hold/review/escalate actions and evidence snapshots.
- Human override and appeal path.

Proprietary concept: **Commercial Integrity Shield (CIS)** — combines security, data provenance and economic guardrails to stop technically valid but financially dangerous actions.

## M74 — Internationalization, Marketplace Abstraction & Commerce Localization
Goal: keep Brazil/Mercado Livre as V1 operational launch while ensuring the V1 architecture is not Brazil-hardcoded.
- Marketplace adapter contract and capability negotiation.
- Country/marketplace configuration packs.
- Currency, decimal, timezone, locale and language handling.
- Unit systems and product-attribute localization.
- Fee/tax/logistics rule packs with explicit jurisdiction/version provenance.
- FX conversion with source/timestamp and no false precision.
- Regional category/taxonomy mappings.
- Cross-border sourcing reserved behind explicit legal/economic capability gates.
- Feature availability matrix per marketplace/country.
- Brazil/Mercado Livre remains first production target; other marketplaces remain adapters/capability-ready until separately validated.

## M75 — Accessibility & UX Quality System
Goal: make a complex intelligence platform understandable, fast and usable.
- WCAG-aligned accessibility target to be frozen during requirements.
- Keyboard navigation, focus, semantic structure and screen-reader support.
- Contrast, scalable typography and reduced-motion support.
- Localization-ready design system.
- Progressive disclosure: beginner simplicity with expert depth.
- Explainability patterns for scores, estimates, confidence and provenance.
- Empty/error/loading/degraded states.
- Mobile and low-bandwidth UX.
- Performance budgets for critical workflows.
- UX telemetry without invasive collection.
- Usability testing and accessibility regression checks.

Proprietary concept: **Decision Clarity Layer (DCL)** — every recommendation answers: What happened? Why? How confident? How much money is affected? What can I do? What happens if I do nothing?

## M76 — Developer Platform, Public API, Webhooks & MCP
Goal: make ML Hunter extensible and AI/tool-native while preserving security and economics.
- Versioned public API strategy.
- OAuth/API keys/service accounts with least privilege.
- Tenant-scoped permissions and quotas.
- Webhooks with signatures, retries, idempotency and replay protection.
- SDK/OpenAPI strategy.
- Read-only analytics/data API vs mutation API separation.
- MCP/tool layer over stable domain services, never direct database access.
- Tool schemas for product search, seller intelligence, supplier discovery, profit calculation, history, opportunity simulation and business analytics.
- AI tool authorization through Commerce Safety Plane.
- Developer portal, sandbox/test data and observability.
- Usage metering and future API commercial entitlements.
- Backward compatibility and deprecation policy.

Proprietary concept: **Hunter Intelligence Fabric (HIF)** — a governed domain-tool fabric shared by UI, automation, internal AI, public API and MCP, preventing five separate implementations of business logic.

## Cross-module rules added
1. Net profit is the primary optimization objective; revenue, clicks and ROAS are supporting signals.
2. Post-sale economics are first-class: returns, refunds, claims and reputation feed realized profitability.
3. Marketplace-specific functionality must pass capability discovery before being promised.
4. All automation supports policy boundaries, auditability, safe degradation and kill switches.
5. Collaboration never weakens tenant isolation.
6. Public APIs/MCP reuse governed domain services and authorization rather than bypassing them.
7. Brazil/Mercado Livre is the first operational market, not an architectural hard-code.
8. Customer/review intelligence must remain policy-compliant and evidence-grounded.

## Feature Universe freeze gate
Do not declare `ML_HUNTER_V1_FEATURE_UNIVERSE_FROZEN` until:
- M01-M76 are indexed and reconciled for overlap/dependencies;
- PROJECT-MASTER, SCOPE and REQUIREMENTS reflect accepted V1 boundaries;
- all modules are classified as core platform, domain intelligence, operations, SaaS, trust, UX or extensibility;
- duplicate responsibilities have an authoritative owner module;
- marketplace/source capabilities are marked VERIFIED / CANDIDATE / UNKNOWN rather than assumed;
- V1 implementation remains 0% until governed module planning authorizes code.

Next discovery action: perform a macro coverage audit across M01-M76, consolidate overlaps, build dependency waves and decide whether any material domain remains uncovered. If no material gaps remain, propose Feature Universe Freeze and begin detailed planning module-by-module.