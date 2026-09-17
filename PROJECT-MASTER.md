# ML Hunter Project Master

## Identity
- Project: **ML Hunter**
- Canonical repository: `KayzenRoot/ml-hunter`
- Repository classification: `GREENFIELD`
- Current maturity: `PLANNING / PRODUCT DISCOVERY`
- GEF baseline: `GEF Bootstrap V1.0.0 — ADOPTED`

## Product direction — discovery evidence, not final architecture
ML Hunter is being defined as a local-to-marketplace product opportunity intelligence and operations system. Its initial operator will use it to discover products available from wholesalers/retailers in a configured geographic region, normalize their product and price information, compare them with Mercado Livre economics, and surface opportunities with explainable net margin/ROI/risk information. The system is intended to reduce manual product hunting substantially.

The initial operating constraint is zero or near-zero incremental API/data cost for roughly the first one to two months while sales generate working capital. The design therefore prioritizes legitimate free APIs/datasets, first-party public catalog/offer sources, compliant source-specific collectors, aggressive lawful caching and incremental collection. Paid providers may be introduced later only when justified by economics/reliability.

## Accepted discovery direction from operator
- Initial use: single operator.
- Future direction: commercial multi-tenant SaaS.
- Geography: user-configurable CEP/region/radius rather than hard-coding Indaiatuba/Salto/Itu.
- Initial target region: Indaiatuba, Salto and Itu, SP, while preserving a generic geographic model.
- Product records should include image and rich normalized metadata where sources support it.
- Retail/wholesale collectors must be source-specific, observable, resilient and provenance-aware.
- Mercado Livre integration is required for market intelligence and a governed listing workflow.
- Bling is an integration candidate because it can act as product/stock/fiscal/marketplace operational bridge; final direct-vs-Bling publishing architecture remains unresolved pending M12/M13.
- A complete cockpit/dashboard is required for opportunities, profitability, products, stores/sources, marketplace signals, procurement, inventory/listing state, settings and source health.
- Profitability must include more than purchase-vs-sale price: marketplace selling costs, logistics, configured taxes, packaging, procurement/travel allocation and other accepted costs must be modeled before declaring an opportunity profitable.

## Planning structure
The governed planning index is `docs/product/PLANNING-MODULE-INDEX.md`. It currently defines 30 planning modules spanning product discovery, zero-cost sources, collectors, geography, catalog/GTIN, images, price intelligence, Mercado Livre intelligence, profitability, opportunity ranking, procurement, Bling, publication, fiscal boundaries, dashboard, settings, SaaS/multi-tenancy, data/backend architecture, security/compliance, reliability/testing, infrastructure/FinOps, administration, notifications, optional AI and final Codex handoff.

## Current accepted state
- GEF adoption is accepted.
- No product code or release exists.
- No final technology stack or architecture has been selected.
- Product implementation progress remains `0%`.
- Product discovery has started under `MLH-WO-0002-PRODUCT-DISCOVERY`.

## Architecture discipline
Architecture remains options-only until discovery closes sufficient requirements and an ADR accepts the relevant decision. The current SaaS-ready/local-first decomposition is a hypothesis, not an accepted implementation architecture.

## External integration research snapshot — 2026-09-17
Current first-party documentation supports keeping two Mercado Livre publication options under study: direct Mercado Livre integration, and ML Hunter -> Bling -> Mercado Livre. Bling documentation confirms current Mercado Livre listing management, listing creation from Bling products, stock synchronization and product/listing linkage. Mercado Livre documentation exposes official selling-fee/pricing and shipping-cost resources needed for profitability calculations. These findings inform planning but do not yet select an architecture.

## Major constraints
- Preserve GEF source-of-truth ordering and governed decisions.
- No implementation without an approved Work Order.
- No quota evasion or fake identities/keys; source limits and terms are engineering constraints.
- No invented tests, releases, capabilities or evidence.
- Exact-head review is required for substantial merges.
- CRITICAL/HIGH unresolved findings block governed release acceptance.
- Never hard-code the first operator's geography into the future product model.

## Completed governed increment
`MLH-WO-0001-GEF-ADOPTION` — accepted.

## Active governed increment
`MLH-WO-0002-PRODUCT-DISCOVERY` — IN PROGRESS.

## Next planning action
Begin `M01 — Product Vision, Operator & SaaS Evolution` and progress module-by-module. Each module must convert discussion into traceable decisions and unresolved questions before promotion to canonical requirements/architecture.

## Known capability gap
`main` is currently unprotected and no repository ruleset exists; the connected GitHub integration cannot configure administrative repository rules. See `.engineering/receipts/CAPABILITY-GAPS.md`.

## GEF adoption status
`ADOPTED — READY_FOR_GOVERNED_DEVELOPMENT`.
