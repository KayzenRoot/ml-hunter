# ML Hunter V1 — Planning Execution System

Status: ACTIVE PLANNING FOUNDATION
Governed increment: MLH-WO-0002-PRODUCT-DISCOVERY
Branch: planning/mlh-wo-0002-product-discovery

## Decision
ML Hunter V1 now transitions from macro feature discovery into governed detailed planning. The V1 includes the complete approved feature universe, not a reduced MVP. Product implementation remains blocked until module planning, architecture, contracts, evidence and pre-code gates are closed.

## Planning objective
Plan every approved ML Hunter V1 module deeply enough that Codex acts primarily as an implementation/completion engine rather than rediscovering product intent or architecture. Planning artifacts SHALL pre-seed file names, responsibilities, interfaces, invariants, acceptance criteria, test intent, security constraints, observability and STOP CONDITIONS.

## Codex token-efficiency principle
Every implementation slice should receive the smallest sufficient Context Pack containing only authoritative files for that slice. Codex SHALL not be asked to infer the whole product from chat history.

Context Pack pattern:
1. Work Order
2. module MASTER.md
3. relevant contracts/schemas
4. relevant ADRs
5. security/data invariants
6. test specification
7. exact file manifest
8. Definition of Done
9. STOP CONDITION

## Canonical planning tree

```text
docs/
  planning/
    ML-HUNTER-V1-PLANNING-EXECUTION-SYSTEM.md
    V1-MODULE-DEPENDENCY-MAP.md
    V1-PLANNING-STATUS.md
    V1-FILE-MANIFEST.md
    V1-TRACEABILITY-MATRIX.md
    V1-RISK-REGISTER.md
    modules/
      M01-product-vision/
        MASTER.md
        REQUIREMENTS.md
        DOMAIN.md
        UX.md
        DATA.md
        API-CONTRACTS.md
        SECURITY.md
        OBSERVABILITY.md
        TESTS.md
        DECISIONS.md
        FILE-MAP.md
        CODEX-CONTEXT.md
      Mxx-.../
        <same planning contract, specialized when necessary>
  architecture/
    SYSTEM-CONTEXT.md
    BOUNDED-CONTEXTS.md
    DEPENDENCY-RULES.md
    DATA-FLOW.md
    EVENT-MAP.md
    SECURITY-ARCHITECTURE.md
    DEPLOYMENT-TOPOLOGY.md
    ADR-INDEX.md
  contracts/
    domain/
    api/
    events/
    adapters/
    policies/
    ai-tools/
  ux/
    INFORMATION-ARCHITECTURE.md
    TENANT-COCKPIT.md
    ADMIN-CONTROL-CENTER.md
    MOBILE.md
    DESIGN-SYSTEM.md
  testing/
    TEST-STRATEGY.md
    GOLDEN-CASES.md
    CONTRACT-TEST-MATRIX.md
    SECURITY-TEST-MATRIX.md
    AI-EVAL-MATRIX.md
  codex/
    CONTEXT-PACK-STANDARD.md
    FILE-OWNERSHIP-MAP.md
    IMPLEMENTATION-SLICES.md
    PROMPT-STANDARD.md
```

## Standard module planning contract
Each module SHALL answer, before implementation:

### MASTER.md
Purpose; user/business value; scope; non-goals; dependencies; outputs; invariants; success metrics; failure modes; open questions; accepted decisions; STOP CONDITION.

### REQUIREMENTS.md
Traceable functional requirements (FR); non-functional requirements (NFR); business rules (BR); acceptance criteria (AC); explicit UNKNOWN items.

### DOMAIN.md
Entities; value objects; states; state transitions; invariants; calculations; terminology; ownership boundaries.

### UX.md
Personas/roles; journeys; screens; actions; empty/loading/error states; decision clarity; accessibility; responsive/mobile behavior where relevant.

### DATA.md
Authoritative data; observed/derived/estimated/unknown truth class; provenance; freshness; retention; tenancy; privacy; indexes/query patterns; migration implications.

### API-CONTRACTS.md
Commands; queries; endpoints/tools; request/response shapes; errors; idempotency; pagination; quotas; authorization; versioning. Detailed schemas may live under docs/contracts.

### SECURITY.md
Threats; authorization; tenant boundaries; secrets; sensitive fields; abuse cases; financial mutation guards; audit requirements; AI/tool boundary.

### OBSERVABILITY.md
Logs; metrics; traces; health; business telemetry; cost telemetry; alerts; diagnostic evidence.

### TESTS.md
Unit; contract; integration; E2E; security; failure/degradation; golden cases; benchmark/eval requirements; evidence expected.

### DECISIONS.md
Accepted decisions; rejected alternatives; ADR links; unresolved decisions and owner/gate.

### FILE-MAP.md
Exact planned implementation paths. For each file: responsibility, public interface, dependencies, key invariants, tests and completion notes. Files are pre-seeded conceptually before Codex work.

### CODEX-CONTEXT.md
Minimal authoritative reading set; files Codex may modify; files frozen/read-only; required commands; acceptance checks; evidence outputs; STOP CONDITION.

## File-map entry format

```yaml
path: src/<bounded-context>/<file>
kind: domain|service|adapter|api|worker|ui|test|config
responsibility: one sentence
exports:
  - contract/function/type
inputs:
  - dependency/contract
invariants:
  - rule
errors:
  - typed failure
tests:
  - expected test path
observability:
  - required metric/log/event
security:
  - required guard
status: PLANNED|SKELETON|IMPLEMENTED|VERIFIED
```

## Planning waves
The 76 macro modules SHALL NOT be planned blindly by numeric order. Detailed planning uses dependency waves while preserving canonical module IDs.

### Wave A — Product truth and governance
Vision, scope, success metrics, source policy, compliance, data truth, security principles, V1 boundaries.

### Wave B — Platform foundations
Tenancy, data architecture, modular harness, security, reliability, testing, infrastructure, FinOps, internationalization, developer platform.

### Wave C — Acquisition intelligence
Sources, collectors, geography, product identity, media, local/global supplier graph, price intelligence.

### Wave D — Marketplace intelligence / Spy
Mercado Livre intelligence, competitor intelligence, product/niche discovery, keyword/search intelligence, historical intelligence, storefront/reverse sourcing, market graph, demand/trend/anomaly intelligence.

### Wave E — Money and decision engines
Profit, Hunter ranking, capital allocation, time-to-cash, profit leakage, forecasting, experimentation, learning/calibration.

### Wave F — Commerce operations
Procurement, inventory, Bling, publishing, dynamic pricing, Profit Guard, replenishment, lifecycle, advertising, returns/refunds/recovery, reputation/customer experience.

### Wave G — Product surfaces
Tenant cockpit, settings, notifications, AI copilot, mobile sourcing, saved Hunters/strategy studio, onboarding, academy/customer success, accessibility/UX.

### Wave H — SaaS operations
Admin, billing/entitlements, support/Hunter Doctor, product analytics, data portability, collaboration/agency, fraud/commercial integrity, incident/disaster recovery.

### Wave I — Architecture closure and Codex handoff
Cross-module reconciliation, ADR closure, final dependency graph, schema/API/event contracts, implementation slices, Codex Context Packs, pre-code audit.

## Planning gates
A module is not PLAN-COMPLETE until:
- scope/non-goals are explicit;
- dependencies and ownership are explicit;
- FR/NFR/BR/AC are traceable;
- data truth/provenance/freshness rules are explicit where relevant;
- API/event/tool boundaries are explicit;
- tenant/security/financial guards are explicit;
- UX states are explicit where relevant;
- observability and diagnostics are explicit;
- test/evidence plan is explicit;
- implementation FILE-MAP is explicit;
- Codex Context Pack is bounded;
- no CRITICAL/HIGH unresolved planning risk blocks implementation.

## Skeleton-first rule
Planning may create documentation and implementation file manifests/skeleton specifications early, but SHALL NOT create misleading production code or fake passing tests. A skeleton must be clearly marked PLANNED/SKELETON and must not be represented as implemented.

## Change control
After a module becomes PLAN-COMPLETE, new scope affecting it requires an explicit planning delta and traceability update. Cross-module discoveries are allowed, but silent scope drift is prohibited.

## Review model
Every planning round ends with:
1. module checkpoint;
2. changed canonical files;
3. unresolved UNKNOWNs;
4. dependency impacts;
5. risk changes;
6. next legal planning action.

## Global pre-code STOP CONDITION
Product implementation may begin only after the final governed audit establishes:

`ML_HUNTER_V1_PLANNED_READY_FOR_CODEX_IMPLEMENTATION`

Until then, implementation status remains 0% even when detailed design/file maps are advanced.
