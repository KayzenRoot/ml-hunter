# Dynamic Commerce Control — Discovery Note

Status: DISCOVERY / NOT YET ARCHITECTURALLY FROZEN
Governed increment: `MLH-WO-0002-PRODUCT-DISCOVERY`

## Objective
ML Hunter must continuously protect tenant profitability after a product is listed. Opportunity discovery is not enough: acquisition cost, local availability, Mercado Livre competition, fees, logistics and catalog competition can change after publication.

## Core control loop
`local source observation -> canonical product -> active listing mapping -> recompute economics -> inspect marketplace competition -> policy engine -> recommended/automatic action -> integration executor -> reconciliation -> notification -> outcome history`

## Required capabilities

### Acquisition Cost Watcher
Track source price, wholesale tiers, promotion validity, stock/availability when observable, freshness and source confidence. A material acquisition-cost change invalidates the previous profitability snapshot and triggers recalculation.

### Profit Guard
For every managed listing maintain configurable thresholds such as target margin, minimum absolute profit, minimum ROI, maximum acquisition cost, safety buffer and data-freshness requirement. Deterministic calculations are authoritative.

### Catalog Competition / Buy Box Intelligence
Where Mercado Livre catalog capabilities apply, track competition state and available competition signals. Treat `winning`, `sharing_first_place`, `competing` and non-competing/listed states as evidence. Never lower price merely to win competition if the resulting economics violate tenant guardrails.

### Repricing Policy Engine
Potential actions: KEEP, REPRICE_UP, REPRICE_DOWN, PAUSE, REVIEW, REACTIVATE. Policies require floors/ceilings, minimum margin, minimum profit, cooldown, maximum percentage change per interval, freshness/confidence gates and anti-oscillation controls. The AI layer may explain or recommend actions; deterministic policy rules authorize financial mutations.

### Auto-Pause / Reactivation
If acquisition cost, competition, fees or other authoritative inputs make a listing uneconomic, the system can recommend or, when the tenant explicitly enables a governed automation policy, pause it. Reactivation must revalidate economics and current source availability. Manual override and kill switch are required.

### Mercado Livre / Bling Execution Boundary
Discovery must decide which system owns price, stock and listing status for each integration topology. Avoid dual writers. Direct Mercado Livre and Bling-mediated paths require idempotency, reconciliation and an authoritative source-of-truth matrix.

### Listing Operations UX
Tenant UI should expose listing status, current selling price, acquisition cost, current projected margin/profit, competition state where applicable, last source refresh, last marketplace refresh, recommended action, automation mode, reason/evidence, change history and one-click safe actions.

### Notifications
Event taxonomy should include: local price increase/decrease, margin breach, profit breach, competition won/lost/shared, suggested repricing, automatic repricing, automatic pause/reactivation, source stale/unavailable, stock risk, sale/order, integration failure and unusual price change. Channels planned: in-app notification center, push/mobile-capable path, Telegram and future email/other channels. Severity, deduplication, cooldown, quiet hours, acknowledgement and escalation must be designed.

### AI Role
AI summarizes why conditions changed, compares evidence, proposes options and produces tenant-friendly explanations/digests. It must not invent prices/fees or bypass policy floors. Expensive inference should be event-driven and cache-first rather than used in every polling cycle.

## Safety constraints
- Never chase catalog competition below configured profitability floors.
- Never allow competing writers (e.g. Bling and direct ML updater) without an accepted ownership strategy.
- Repricing must have hysteresis/cooldowns to prevent price ping-pong.
- Large/unusual changes require stronger gates and notification.
- Stale or low-confidence acquisition data can force REVIEW/PAUSE depending on tenant policy.
- Every automatic commercial mutation requires audit event, before/after values, reason, evidence snapshot and reconciliation result.
- Tenant can globally disable automation and revert to recommendation-only mode.

## Mercado Livre official capability evidence to validate during M08/M13
Current official documentation indicates catalog competition exposes competition status, winner comparison and `price_to_win`-style signals for applicable catalog listings; notifications can report competition changes; active listings can be updated for price/stock and paused/reactivated; notifications provide event-driven updates for items/orders and price resources. Exact MLB behavior, endpoint availability and current constraints must be revalidated during implementation.

## Planning impact
This note expands M07, M08, M09, M10, M12, M13, M15, M19, M22, M23, M25, M26, M27 and M28. Final policy thresholds, automation defaults and integration ownership remain open decisions for their respective planning sessions.
