# Batch 03 — M12-M16 Contract Pack

Status: PLAN-IN-PROGRESS

## Verified integration facts — research snapshot 2026-09-17
These are evidence inputs, not permanent assumptions. Reverify before implementation.
- Bling API v3 is REST/JSON and uses OAuth 2.0/Bearer authentication; current Bling documentation also describes JWT migration/usage and webhooks with HMAC SHA-256 signature validation.
- Mercado Livre exposes official developer APIs for items/listings and orders. Current documentation contains active migration/deprecation notices, reinforcing capability/version discovery rather than frozen endpoint assumptions.

## M12 Bling Integration contract
Domain: BlingConnection, BlingCapability, ExternalEntityLink, SyncCursor, SyncObservation, ReconciliationRecord, OwnershipRule.

Ownership modes: AUTHORITATIVE_WRITER, READER, MIRROR, NOT_SUPPORTED. Ownership is defined per domain/entity/field/action, never globally as 'Bling owns everything'.

Required flows: OAuth lifecycle; capability discovery; product/SKU mapping; inventory observations/mutations only where ownership allows; order/fiscal references; webhook verification/deduplication; polling fallback where justified; retry/backoff; rate/quota handling; reconciliation; connector health.

New technology — Integration Ownership Matrix (IOM), ADOPT: machine-readable ownership contract prevents dual writers.
New technology — Sync Truth Envelope (STE), ADOPT: every synchronized fact includes local/external versions/timestamps, owner and reconciliation state.
New technology — Connector Shadow Replay (CSR), EXPERIMENT: sanitized historical interactions replay against mapping changes before rollout.
New technology — Capability Drift Sentinel (CDS), ADOPT: watches verified provider capabilities/contracts/deprecations and forces affected features into DEGRADED/REVIEW instead of silently assuming old behavior.

## M13 Mercado Livre Publishing, Orders & Sync contract
Domain: MarketplaceConnection, ListingIntent, ListingObservedState, ListingTwin, CommerceCommand, OrderObservation, FulfillmentObservation, SyncConflict, ReconciliationAction.

Listing twin states: IN_SYNC, LOCAL_AHEAD, REMOTE_AHEAD, DRIFTED, CONFLICT, UNKNOWN, PENDING_MUTATION.
Commerce mutation path: command -> validation -> policy -> authorization -> economic guard -> idempotency -> blast-radius guard -> audit -> adapter -> observed result -> reconciliation.

Order events are external observations until validated/normalized. Inventory decrement semantics remain adapter/version aware and must not be guessed.

New technology — Commerce Command Firewall (CCF), ADOPT.
New technology — Listing Digital Twin (LDT), ADOPT.
New technology — Safe Mutation Planner (SMP), EXPERIMENT.
New technology — Mutation Receipt Chain (MRC), ADOPT: each external write stores intent, idempotency key, provider request reference, response/evidence, observed resulting state and reconciliation result.

## M14 Fiscal, Financial & Operational Ledger contract
Stages: PROJECTED, APPROVED, COMMITTED, REALIZED, ADJUSTED. Stages link but do not overwrite one another.

Economic event families: acquisition, inbound logistics, marketplace fee, shipping, tax/fiscal reference, advertising, sale revenue, payment/settlement, refund, return, claim, loss/damage, adjustment, recovery. Legal/fiscal semantics are delegated to jurisdiction/provider-specific modules and verified integrations.

New technology — Economic Lineage Ledger (ELL), ADOPT.
New technology — Profit Reconciliation Graph (PRG), ADOPT: decomposes projected-vs-realized variance by attributable drivers.
New technology — Leakage Fingerprint (LF), EXPERIMENT.
New technology — Financial Evidence Seal (FES), ADOPT: material realized entries require source/evidence reference, import/integration provenance or attributable manual entry; no anonymous realized money.

## M15 Tenant Cockpit contract
Primary surfaces: Today/Next Actions; Opportunities; Capital; Procurement; Inventory; Listings; Orders; Profit & Reconciliation; Sources/Integrations; Alerts; AI Copilot; Settings link.

Every consequential card follows decision compression: WHAT changed; WHY; MONEY; CONFIDENCE/FRESHNESS; RISK; NEXT ACTION; evidence drill-down.

Read model: Business State Lens aggregates normalized domain projections. UI must not query raw provider schemas directly.

New technology — Decision Compression Layer Core (DCL-Core), ADOPT.
New technology — Attention Budget Engine (ABE), EXPERIMENT: economic impact x urgency x confidence x reversibility x user relevance, with anti-alert-fatigue constraints.
New technology — Business State Lens (BSL), ADOPT.
New technology — Cockpit Causal Drilldown (CCD), EXPERIMENT: navigate KPI -> contributing events -> decision capsule -> evidence, avoiding opaque dashboards.

## M16 Settings & User Configuration contract
Configuration families: tenant/business profile, region/geography, capital, economic thresholds, risk/concentration, sourcing, categories/verticals, marketplace, ERP, notifications, automation mode, exclusions, AI/cost preferences, feature settings.

Every consequential setting has type, scope, default provenance, validation, version, effective time and impact class. Secrets are references to secret storage, never configuration values returned to normal clients.

New technology — Policy Snapshot Engine (PSE), ADOPT.
New technology — Configuration Impact Preview (CIP), EXPERIMENT: historical counterfactual replay of selected policy changes, clearly labeled as replay rather than forecast.
New technology — Safe Defaults Registry (SDR2), ADOPT.
New technology — Policy Conflict Compiler (PCC), ADOPT: statically/dynamically detect contradictory settings such as automation enabled while all financial actions require manual-only policy, impossible margin/price constraints or geography/source exclusions that yield empty strategy.

## Cross-module Commerce State Reconciliation Fabric (CSRF), ADOPT
Inputs: local intended state, Bling observed state, Mercado Livre observed state, ledger evidence and ownership matrix.
Outputs: MATCHED, PENDING, DRIFTED, CONFLICT, UNKNOWN plus proposed repair/review action.
Invariant: reconciliation may propose repair but cannot bypass CCF/authorization/economic guards.

## Mutation Blast-Radius Budget (MBRB), EXPERIMENT
Policy may cap number/value/exposure of external mutations by tenant, integration, action class and time window. Promotion requires evidence that it materially reduces operational loss without blocking normal workflows excessively.

## Security
OAuth/JWT/token material server-side only; webhook signatures verified; replay/deduplication controls; least privilege/scopes; external payloads untrusted; PII minimized; tenant isolation; secrets excluded from logs/AI; mutation audit; kill switch; connector quarantine; support access separately authorized/audited.

## Observability
Connector auth health, webhook verification failures, sync lag, reconciliation drift, mutation failure/idempotency reuse, provider capability drift, ledger unreconciled value, projected-vs-realized variance, cockpit data age, alert acknowledgement, configuration change effects, cost/quota per integration.

## Planned file families
`src/integrations/bling/*`
`src/integrations/ownership/*`
`src/integrations/reconciliation/*`
`src/marketplace/mercadolivre/*`
`src/commerce/commands/*`
`src/commerce/listing-twin/*`
`src/ledger/economic-lineage/*`
`src/ledger/reconciliation/*`
`src/cockpit/read-models/*`
`src/cockpit/attention/*`
`src/settings/policies/*`
`src/settings/impact-preview/*`
`src/settings/conflicts/*`

## Golden cases
1. Bling and ML both appear capable of stock writes: IOM permits only accepted writer path.
2. Duplicate webhook/event does not duplicate order/ledger mutation.
3. Desired listing differs from remote state: LDT marks drift before mutation.
4. External write times out after provider accepted it: MRC/reconciliation prevents blind duplicate write.
5. Provider capability disappears/deprecates: CDS degrades affected feature safely.
6. Projected profit differs from realized: PRG explains attributable variance without rewriting projection.
7. Manual realized adjustment requires attributable evidence/actor.
8. Cockpit KPI drills to normalized events/evidence, not raw provider payload dependency.
9. Configuration change creates contradiction: PCC rejects/warns according to severity.
10. Policy replay labels historical counterfactual and never promises future result.

## Batch gate
M12_M16_PLANNING_BATCH_COMPLETE requires ownership ADR direction, integration capability evidence strategy, mutation/reconciliation safety, economic lineage, cockpit/read-model boundaries, configuration versioning, test intent, file maps and Codex context boundaries to reconcile with M01-M11.
