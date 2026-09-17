# Batch 03 — M12-M16 Commerce Control & Tenant Experience

Status: PLAN-IN-PROGRESS
Modules: M12 Bling Integration; M13 Mercado Livre Publishing, Orders & Sync; M14 Fiscal, Financial & Operational Ledger; M15 Tenant Cockpit, Analytics & Business UX; M16 Settings & User Configuration.

## Mission
Connect ML Hunter decisions to real commerce operations while maintaining one authoritative writer per domain, reconciliation, auditability, safe degradation and a decision-first tenant cockpit.

# M12 — Bling Integration
Plan capability discovery, auth/token lifecycle, products/SKUs, inventory, orders, fiscal/ERP references, sync direction, reconciliation, rate limits, retries and ownership ADR. No assumption that Bling must own every domain.

New technology: Integration Ownership Matrix (IOM) — ADOPT. For every entity/field/action declare AUTHORITATIVE_WRITER, READER, MIRROR or NOT_SUPPORTED.
New technology: Sync Truth Envelope (STE) — ADOPT. Synced records carry external version/time, local version/time, ownership and reconciliation state.
New technology: Connector Shadow Replay (CSR) — EXPERIMENT. Replay captured sanitized connector interactions against new mapping logic before rollout.

# M13 — Mercado Livre Publishing, Orders & Sync
Plan listing creation/update, catalog association where available, stock/price synchronization, orders, shipping/fulfillment signals, cancellations/returns references, idempotency, capability discovery and reconciliation.

New technology: Commerce Command Firewall (CCF) — ADOPT. Every external mutation passes domain validation, tenant policy, authorization, economic guard, idempotency and audit.
New technology: Listing Digital Twin (LDT) — ADOPT. Maintain desired vs observed marketplace state and compute drift before issuing mutations.
New technology: Safe Mutation Planner (SMP) — EXPERIMENT. Groups/sequence changes to minimize blast radius and unnecessary API writes.

# M14 — Fiscal, Financial & Operational Ledger
Plan immutable business-event/economic ledger references for projected vs committed vs realized values, fees, taxes, logistics, refunds, returns, adjustments and settlement evidence. Fiscal legal implementation remains jurisdiction/provider-specific.

New technology: Economic Lineage Ledger (ELL) — ADOPT. Connect projected -> approved -> committed -> realized -> adjusted economics without overwriting stages.
New technology: Profit Reconciliation Graph (PRG) — ADOPT. Attribute realized profit differences back to fee/tax/logistics/price/return/other drivers.
New technology: Leakage Fingerprint (LF) — EXPERIMENT. Learn recurring patterns of profit leakage by product/source/listing/process.

# M15 — Tenant Cockpit, Analytics & Business UX
Decision-first cockpit: money, capital, opportunities, procurement, inventory, listings, orders, realized profit, projected-vs-realized, alerts, source/integration health and AI copilot. Progressive disclosure and DCL principles apply.

New technology: Decision Compression Layer (DCL-Core) — ADOPT. Convert complex state into What changed / Why / Money / Confidence / Risk / Next action while retaining drill-down evidence.
New technology: Attention Budget Engine (ABE) — EXPERIMENT. Rank alerts/tasks by economic impact, urgency, reversibility and confidence to reduce dashboard noise.
New technology: Business State Lens (BSL) — ADOPT. One normalized read model for tenant operational health, avoiding UI coupling to many provider schemas.

# M16 — Settings & User Configuration
Plan tenant profile, geography, capital, economics thresholds, risk tolerance, vertical/category preferences, source policies, marketplace/ERP configuration, notification preferences, automation mode, exclusions and feature settings with versioning.

New technology: Policy Snapshot Engine (PSE) — ADOPT. Material decisions reference exact configuration/policy version active at decision time.
New technology: Configuration Impact Preview (CIP) — EXPERIMENT. Before changing a major threshold/policy, replay recent opportunities to show expected impact without pretending future outcomes are guaranteed.
New technology: Safe Defaults Registry (SDR2) — ADOPT. Defaults are explicit, versioned and conservative for consequential automation.

## Cross-module technology: Commerce State Reconciliation Fabric (CSRF) — ADOPT
Continuously compare intended local state, ERP state, marketplace state and ledger evidence. Produce MATCHED, PENDING, DRIFTED, CONFLICT, UNKNOWN states and route safe repair/review.

## Cross-module technology: Mutation Blast-Radius Budget (MBRB) — EXPERIMENT
Assign maximum allowed mutation count/value/exposure per automation window. Intended as an additional safety boundary for future autopilot.

## Batch STOP CONDITION
M12_M16_PLANNING_BATCH_COMPLETE after authoritative ownership, sync/reconciliation, ledger truth, cockpit read models, configuration versioning, security, tests, file maps and Codex contexts are reconciled with M01-M11 and no HIGH/CRITICAL contradiction remains.
