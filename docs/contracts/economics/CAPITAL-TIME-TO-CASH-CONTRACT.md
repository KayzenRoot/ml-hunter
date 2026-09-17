# Capital & Time-to-Cash Contract

Status: PLANNED CONTRACT
Owners: M09-M11

## Purpose
Make capital efficiency a first-class economic dimension instead of ranking opportunities only by nominal profit/ROI.

## Capital states
AVAILABLE, SOFT_RESERVED, HARD_RESERVED, COMMITTED, INVENTORY_LOCKED, RECEIVABLE, RECOVERED, LOST_OR_ADJUSTED.

Every transition is tenant-scoped, auditable and linked to a decision/procurement/commerce event.

## Time-to-cash phases
`decision -> purchase -> receipt -> listing-ready -> listed -> sale -> settlement -> recovered cash`

Each phase may be OBSERVED, DERIVED, ESTIMATED or UNKNOWN. The system must distinguish realized cycle time from forecast time.

## Metrics
- capital_required
- capital_at_risk
- expected_time_to_first_sale
- expected_time_to_liquidate_test_quantity
- expected_time_to_recover_capital
- realized_time_to_recover_capital
- capital_turns_per_period (only when evidence supports calculation)
- profit_per_capital_day as a derived comparison metric, never sole decision truth

## Invariants
- ROI and time-to-cash are separate dimensions.
- Capital cannot be simultaneously available and hard-reserved/committed.
- Forecast cycle times carry uncertainty and model version.
- Missing demand evidence cannot become an exact sales-velocity forecast.
- Settlement timing is distinct from sale timing.
- Returned/refunded/held receivables can reopen capital exposure.

## Technology: Capital Temporal Graph (CTG) — ADOPT
Represent each monetary commitment as a temporal state graph linked to opportunity, procurement, inventory, order and settlement. Enables capital bottleneck analysis and prevents double counting.

## Technology: Capital Velocity Lens (CVL) — EXPERIMENT
Compare opportunities using configurable economic value over expected capital-lock duration while preserving profit, ROI, risk and confidence separately. Promotion requires replay evidence that it improves portfolio outcomes over simpler ranking.
