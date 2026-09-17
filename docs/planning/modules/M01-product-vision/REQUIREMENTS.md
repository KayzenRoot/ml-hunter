# M01 Requirements

Status: PLAN-IN-PROGRESS

## Functional requirements
- FR-M01-001: V1 SHALL support opportunity discovery without requiring the operator to manually nominate every candidate product.
- FR-M01-002: V1 SHALL support both supplier-to-marketplace and marketplace-to-supplier discovery directions.
- FR-M01-003: V1 SHALL support multiple product categories through capability-based vertical/source abstractions.
- FR-M01-004: V1 SHALL expose complete economic analysis before recommending a consequential commercial action.
- FR-M01-005: V1 SHALL preserve evidence/provenance for material opportunity and financial decisions.
- FR-M01-006: V1 SHALL support projected-versus-realized outcome comparison.
- FR-M01-007: V1 SHALL provide tenant business-management surfaces in addition to research tools.
- FR-M01-008: V1 SHALL provide governed AI assistance over structured evidence/tools.
- FR-M01-009: V1 SHALL support recommendation-first automation and architecture for governed assisted/autopilot evolution.
- FR-M01-010: V1 SHALL be SaaS-ready for multiple tenants, users, regions and entitlement profiles.
- FR-M01-011: V1 SHALL support market/competitor intelligence while distinguishing observed facts from estimates.
- FR-M01-012: V1 SHALL support profit-protection and capital-efficiency workflows after a product is listed.

## Non-functional requirements
- NFR-M01-001: Safety and tenant isolation SHALL override convenience/automation.
- NFR-M01-002: Financial calculations SHALL be deterministic, versioned and testable.
- NFR-M01-003: Material intelligence SHALL expose freshness/confidence/provenance where applicable.
- NFR-M01-004: AI providers SHALL be replaceable and cost-governed.
- NFR-M01-005: The platform SHALL degrade safely when LLMs or external sources are unavailable.
- NFR-M01-006: Domain foundations SHALL not hard-code the initial grocery vertical or initial geography.
- NFR-M01-007: Consequential mutations SHALL be auditable and protected by policy/authorization.
- NFR-M01-008: Modules SHALL have bounded contracts to reduce blast radius and Codex context requirements.

## Business rules
- BR-M01-001: Missing evidence is UNKNOWN.
- BR-M01-002: Estimated competitor economics are ranges/scenarios with assumptions, never private facts.
- BR-M01-003: Cheapest adequate AI model wins after task-specific evaluation.
- BR-M01-004: A lower marketplace price never justifies violating profitability/safety floors.
- BR-M01-005: Source/market data cannot silently outlive freshness policy.
- BR-M01-006: No external integration becomes an authoritative writer without an explicit ownership decision.
- BR-M01-007: Approved V1 macro capabilities remain V1 unless governance explicitly changes scope.

## Acceptance criteria
- AC-M01-001: Product thesis and North Star are explicit.
- AC-M01-002: Initial operator and SaaS evolution boundaries are explicit.
- AC-M01-003: Primary jobs cover discovery through realized-outcome learning.
- AC-M01-004: AI/deterministic responsibility boundary is explicit.
- AC-M01-005: Global/category-agnostic foundation is explicit while first operational vertical remains concrete.
- AC-M01-006: Non-goals prevent unsupported competitor claims, policy bypass and unsafe automation.
- AC-M01-007: Success dimensions include profit, capital, accuracy, cost, safety and activation.
- AC-M01-008: Downstream modules can trace their purpose back to at least one M01 job/success dimension.

## UNKNOWN
Exact numeric targets remain UNKNOWN until baseline data exists. Later planning SHALL define initial target ranges and calibration methodology rather than fabricate baselines.
