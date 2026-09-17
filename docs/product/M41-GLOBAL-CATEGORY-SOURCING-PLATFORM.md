# M41 — Global Category & Sourcing Platform

Status: DISCOVERY / ACCEPTED DIRECTION
Governed increment: `MLH-WO-0002-PRODUCT-DISCOVERY`

## Decision
ML Hunter is category-agnostic by architecture. Grocery/FMCG remains the launch wedge for the initial operator, but the SaaS must support arbitrary product verticals, categories, subcategories, supplier types, geographies and marketplace domains without core rewrites.

## Product principle
The core must not contain grocery-only assumptions. Category-specific behavior belongs in adapters, profiles, policies and capability packs.

Conceptual flow:
`Marketplace demand <-> canonical product identity <-> supplier/source graph <-> landed acquisition cost <-> profit/risk engine <-> commerce control`

## Launch wedge vs platform scope
- Initial operator focus: supermarkets, wholesalers and FMCG around the configured region.
- Platform scope: all lawful marketplace-compatible product categories for which legitimate source/catalog/price data can be obtained.
- SaaS onboarding should allow tenants to choose one or more verticals and source packs.

## Candidate vertical packs
1. Grocery, food, beverages and household FMCG.
2. Pet food, pet hygiene, accessories and supplies.
3. Electronics, computing, peripherals, mobile accessories and smart-home.
4. Home, kitchen, cleaning and organization.
5. Beauty, cosmetics and personal care.
6. Baby and maternity goods.
7. Tools, hardware, construction and electrical supplies.
8. Automotive parts and accessories.
9. Office, school and stationery.
10. Toys, hobbies, games and collectibles.
11. Sports, fitness and outdoor.
12. Fashion/accessories where variant identity can be handled reliably.
13. Agro/garden products where marketplace/source policies permit.
14. Other future lawful verticals discovered from marketplace taxonomy and supplier availability.

Regulated/restricted categories require separate compliance gates and may be disabled entirely.

## Source architecture
Every supplier/data source is a plug-in adapter implementing a common Source Capability Contract rather than being hard-coded into the Hunter.

Minimum capabilities are declared, not assumed:
- source identity and legal/provenance metadata;
- supported countries/regions;
- supported categories/domains;
- catalog discovery;
- product detail;
- GTIN/EAN/UPC/SKU/manufacturer-part-number identifiers when available;
- images/media when permitted;
- current price;
- price tiers/MOQ;
- availability/stock signal where available;
- promotion/validity;
- store/warehouse/location;
- delivery/pickup constraints;
- authentication/quota/rate limits;
- freshness SLA/expectation;
- terms/licensing/robots policy;
- health and degradation state.

Adapters can be API, feed, public/open dataset, first-party catalog, approved affiliate/catalog feed, structured document or compliant collector. Free/near-zero-cost sources are preferred for V1, but the contract supports paid sources later without core redesign.

## Source Registry & Discovery
Create a governed Source Registry containing candidate and accepted sources by country, vertical and capability. A source is never described as a free API until verified. Each record must distinguish VERIFIED, CANDIDATE, REJECTED, PAID-FUTURE or UNKNOWN.

Discovery should continuously research legitimate new sources and evaluate:
- cost/free tier;
- geographic coverage;
- catalog breadth;
- price freshness;
- identifier quality;
- images;
- stock/availability;
- API/feed stability;
- quota;
- compliance/licensing;
- integration effort;
- expected economic value.

## Universal taxonomy
Mercado Livre marketplace taxonomy is a useful sell-side reference, but ML Hunter owns a marketplace-neutral internal taxonomy. Mapping layer:
`Hunter Category <-> Mercado Livre category/domain <-> supplier category <-> external taxonomy`

This avoids coupling the database to one marketplace or supplier.

## Category Capability Profiles
Different verticals require different economics and identity rules.

Examples:
- Grocery: expiry, pack/unit normalization, temperature/storage, wholesale tiers.
- Pet: size/weight, animal type, life stage, recurring consumption.
- Electronics: MPN/model, warranty, voltage, condition, serializable goods.
- Auto parts: compatibility/fitment and vehicle model/year.
- Fashion: size/color/variant matrix and higher return-risk assumptions.
- Beauty: volume, variant, expiry/batch where applicable.

Profiles extend the common product model without contaminating core modules with vertical-specific fields.

## Supplier Graph
Model suppliers and sourcing opportunities as a graph:
`canonical product -> supplier -> offer -> warehouse/store -> geography -> quantity tier -> landed cost -> freshness`

A single GTIN/product may therefore have many competing acquisition paths.

## Global Sourcing Hunter
For a marketplace opportunity, ML Hunter should search all enabled source packs and return the best legitimate acquisition paths according to tenant constraints.

For a supplier product, ML Hunter should search marketplace demand and economics.

This preserves bidirectional discovery across every vertical:
- Source -> Marketplace
- Marketplace -> Source

## Landed Cost
Comparison must use landed acquisition cost, not sticker price alone:
`unit price + supplier freight + travel/pickup allocation + taxes/duties where applicable + MOQ effects + packaging/preparation + payment cost + expected loss/return allowance`

## Tenant personalization
Tenant configuration includes:
- country/marketplace;
- CEP/region/radius;
- enabled verticals;
- enabled sources;
- physical pickup vs online sourcing;
- capital budget;
- minimum margin/ROI/profit;
- max MOQ;
- storage constraints;
- category exclusions;
- risk tolerance;
- compliance restrictions.

The initial tenant can enable Grocery/FMCG first while the same platform supports other tenants using Electronics, Pet, Auto Parts, etc.

## Marketplace-wide demand discovery
Use the marketplace category/domain hierarchy as an input to discover niches across the whole marketplace. Current Mercado Livre documentation exposes site-specific hierarchical category trees, category attributes and full category dumps; this supports a generic category discovery layer rather than a grocery-only one. Exact capabilities remain subject to current official API validation during implementation planning.

## Best-seller/category signal
Where the marketplace officially exposes category/product highlight signals, ingest them as one demand signal among many, with timestamp and provenance. Never equate ranking alone with guaranteed sales or profitability.

## New platform components
- Source Adapter SDK / Source Capability Contract
- Source Registry
- Source Certification Pipeline
- Universal Taxonomy & Mapping Service
- Category Capability Profiles
- Supplier Graph
- Global Sourcing Hunter
- Landed Cost Normalizer
- Vertical Pack Manager
- Tenant Vertical Onboarding
- Source Coverage Matrix
- Category Opportunity Radar

## Sessions
M41.1 category-agnostic product contract;
M41.2 universal taxonomy;
M41.3 Mercado Livre taxonomy mapping;
M41.4 supplier taxonomy mapping;
M41.5 Source Capability Contract;
M41.6 Source Adapter SDK;
M41.7 Source Registry;
M41.8 source certification/evidence states;
M41.9 free-tier and cost classification;
M41.10 geography/country capabilities;
M41.11 Grocery/FMCG vertical pack;
M41.12 Pet vertical pack;
M41.13 Electronics/Computing vertical pack;
M41.14 Home/Kitchen/Cleaning vertical pack;
M41.15 Beauty/Personal Care vertical pack;
M41.16 Baby vertical pack;
M41.17 Tools/Construction/Electrical vertical pack;
M41.18 Automotive vertical pack;
M41.19 Office/Stationery vertical pack;
M41.20 Toys/Hobbies/Games vertical pack;
M41.21 Sports/Outdoor vertical pack;
M41.22 Fashion/Accessories vertical pack;
M41.23 Agro/Garden vertical pack;
M41.24 regulated/restricted-category policy;
M41.25 Supplier Graph;
M41.26 offer/MOQ/tier normalization;
M41.27 landed-cost normalization;
M41.28 online-vs-local sourcing;
M41.29 supplier discovery/research pipeline;
M41.30 source coverage matrix;
M41.31 marketplace-wide category opportunity scan;
M41.32 tenant vertical onboarding;
M41.33 source-pack enable/disable;
M41.34 cross-vertical Profit Engine extensions;
M41.35 cross-vertical risk models;
M41.36 cross-vertical testing fixtures;
M41.37 adapter observability/breakage;
M41.38 future paid-source migration;
M41.39 international marketplace/source readiness;
M41.40 Codex implementation boundaries and context packs.

## Guardrails
- Do not promise that every category has a free distributor API.
- Do not fabricate distributor APIs, credentials, prices, stock or quotas.
- Prefer official APIs/feeds and legitimate public/open sources.
- Collectors require policy/licensing/ToS review.
- No bypassing authentication, anti-bot controls or quotas.
- Product categories with legal, safety, marketplace or age restrictions require explicit policy gates.
- Profit recommendations must expose evidence freshness and uncertainty.

## Discovery acceptance target
The platform is considered category-global at architecture level when adding a new lawful vertical or supplier normally requires an adapter/profile/configuration package rather than modification of core Hunter, Finance, AI, Tenant or Admin engines.
