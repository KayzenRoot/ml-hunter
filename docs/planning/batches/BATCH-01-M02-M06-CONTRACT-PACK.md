# Batch 01 — M02-M06 Contract & Innovation Pack

Status: PLAN-IN-PROGRESS
Modules: M02, M03, M04, M05, M06

## Batch objective
Convert the first acquisition-intelligence batch from feature direction into implementation-grade planning contracts while preserving zero/near-zero initial operating cost, evidence integrity and modularity.

## Cross-module canonical pipeline
`Source Registry -> Evidence Economy Scheduler -> Collector Cells -> Raw Evidence -> Geography/Economic Reach -> Identity Evidence Graph -> Media Evidence -> Acquisition Evidence Capsule -> downstream Price/Profit/Hunter engines`

Every stage SHALL preserve truth class, provenance, freshness and uncertainty rather than silently upgrading weak evidence.

# M02 — Zero-Cost Data Source Strategy

## Requirements
- FR-M02-001 maintain a governed Source Registry with VERIFIED/CANDIDATE/REJECTED/PAID-FUTURE/UNKNOWN evidence states.
- FR-M02-002 select acquisition jobs using value, freshness need, quota, cost, source health and downstream economic importance.
- FR-M02-003 support official APIs, feeds, open datasets and compliant collectors behind source capability contracts.
- NFR-M02-001 initial operation targets R$0/near-R$0 incremental data cost where feasible without bypassing restrictions.
- BR-M02-001 no source is described as free/stable/permitted until verified.
- AC-M02-001 each enabled source exposes capability/cost/provenance/freshness/health metadata.

## Domain
SourceDescriptor, SourceCapability, SourceCostProfile, QuotaBudget, EvidenceDemand, AcquisitionJob, SourceHealth, SourceCertification.

## New technologies
### Source Value Optimizer (SVO) — ADOPT
Ranks candidate acquisitions by expected information/economic value divided by marginal cost and risk.
Benchmark: useful downstream decisions per 1,000 requests and per R$ spent.

### Evidence Yield Score (EYS) — EXPERIMENT
Measures how much uncertainty a source request historically removes for a task/category/geography.
Risk: feedback loops favoring already-rich sources. Guard with exploration budget.

### Zero-Cost Frontier (ZCF) — ADOPT
Continuously identifies the best achievable coverage/freshness/quality envelope under current free quotas and infrastructure budget.

### Adaptive Freshness Mesh (AFM) — EXPERIMENT
Refresh interval becomes evidence-specific and opportunity-sensitive instead of fixed cron schedules.

## Planned code families
`src/sources/registry/*`, `src/sources/capabilities/*`, `src/sources/scheduler/*`, `src/sources/cost/*`, `src/sources/certification/*`.

# M03 — Retailer & Wholesaler Collector Platform

## Requirements
- FR-M03-001 collectors implement a common capability/lifecycle contract.
- FR-M03-002 raw evidence is stored before normalization when policy permits.
- FR-M03-003 schema drift or impossible deltas can quarantine a collector/output.
- FR-M03-004 collection supports incremental/delta strategies.
- NFR-M03-001 one broken collector cannot poison unrelated sources.
- BR-M03-001 anti-bot/auth/quota bypass is prohibited.

## Domain
CollectorDefinition, CollectorRun, RawEvidence, ExtractionSchema, DriftSignal, QuarantineDecision, CollectorHealth.

## New technologies
### Self-Healing Collector Contract (SHCC) — ADOPT
Collectors declare selectors/schema assumptions, validation rules, recovery modes and safe-disable behavior.

### Collector Digital Twin (CDT) — EXPERIMENT
Small fixture/snapshot model of expected source behavior allows offline replay of parser changes before production activation.

### Schema Drift Radar (SDR) — ADOPT
Detects structural and semantic shifts using field-presence, type, distribution and business-rule deltas.

### Confidence-Gated Ingestion (CGI) — ADOPT
Suspicious extracted data is quarantined rather than promoted into canonical price/catalog truth.

### Delta Harvesting — ADOPT
Prefer changed pages/products/segments where legitimate source mechanics permit, reducing bandwidth/CPU.

### Source Blast-Radius Cells — ADOPT
Independent queue, circuit-breaker and health state per source/source-group.

## Planned code families
`src/collectors/contracts/*`, `src/collectors/runtime/*`, `src/collectors/drift/*`, `src/collectors/quarantine/*`, `src/collectors/replay/*`, `src/collectors/adapters/*`.

# M04 — Geography, CEP & Store Discovery

## Requirements
- FR-M04-001 resolve tenant sourcing region without hard-coded city assumptions.
- FR-M04-002 model store/warehouse/service areas and pickup/delivery paths.
- FR-M04-003 compute economic reach using landed-cost effects, not distance alone.
- FR-M04-004 preserve geography evidence/freshness.
- NFR-M04-001 geographic expansion must be bounded by tenant policy/capital/logistics constraints.

## Domain
GeoPoint, PostalRegion, SourceLocation, ServiceArea, TravelProfile, DeliveryOption, EconomicReach, RouteCostEstimate.

## New technologies
### Economic Reach Graph (ERG) — ADOPT
Graph edge cost combines distance/time, fuel/travel allocation, freight, pickup constraints, MOQ and expected opportunity value.

### Elastic Sourcing Radius (ESR) — EXPERIMENT
Dynamically expands/contracts search radius based on expected economic surplus and evidence quality.

### Geo-Freshness Envelope (GFE) — ADOPT
Store/service-area facts carry source/time/confidence because coverage changes.

## Planned code families
`src/geography/postal/*`, `src/geography/locations/*`, `src/geography/reach/*`, `src/geography/routes/*`, `src/geography/policies/*`.

# M05 — Product Identity & Catalog Intelligence

## Requirements
- FR-M05-001 canonicalize GTIN/EAN/UPC/MPN/SKU plus normalized brand/model/pack/variant evidence.
- FR-M05-002 permit probabilistic candidate matching while preventing ambiguous identity from becoming observed truth.
- FR-M05-003 preserve match evidence and historical revisions.
- FR-M05-004 normalize packs/units before price comparison.
- FR-M05-005 expose financial consequence of identity uncertainty to downstream engines.

## Domain
CanonicalProduct, ProductIdentifier, ProductCandidate, IdentityEvidence, MatchDecision, PackDefinition, VariantDefinition, IdentityRevision.

## New technologies
### Identity Evidence Graph (IEG) — ADOPT
Graph of identifiers, attributes, source observations and candidate canonical products with explainable match paths.

### Match Proof (MP) — ADOPT
Every accepted non-trivial match stores compact reasons/evidence/version, enabling audit and later recalibration.

### Pack Algebra Engine (PAE) — ADOPT
Normalizes unit/pack/bundle relationships and detects economically dangerous quantity mismatches.

### Ambiguity Budget (AB) — EXPERIMENT
Defines how much unresolved identity uncertainty a downstream action may tolerate according to financial exposure.

### Counterfactual Matcher (CM) — EXPERIMENT
When candidates remain ambiguous, computes downstream economic impact under alternate identities and prioritizes human/data resolution when impact is material.

### Identity Time Machine (ITM) — ADOPT
Preserves historical identity mappings and supersession rather than destructive overwrite.

## Planned code families
`src/catalog/identity/*`, `src/catalog/matching/*`, `src/catalog/packs/*`, `src/catalog/variants/*`, `src/catalog/evidence/*`, `src/catalog/revisions/*`.

# M06 — Images & Product Media

## Requirements
- FR-M06-001 attach media to canonical product/variant with provenance and rights metadata where applicable.
- FR-M06-002 detect likely duplicates and variant conflicts.
- FR-M06-003 select marketplace-ready media according to channel policy without silently altering product truth.
- FR-M06-004 distinguish source media, tenant media and generated/edited media.
- NFR-M06-001 generated media cannot be represented as original manufacturer/source evidence.

## Domain
MediaAsset, MediaSource, MediaEvidence, VariantMediaLink, MediaTransform, MediaPolicyResult, MediaFingerprint.

## New technologies
### Media Provenance Chain (MPC) — ADOPT
Tracks original source, transformations, rights/policy metadata and final usage.

### Variant Visual Guard (VVG) — EXPERIMENT
Uses perceptual/attribute evidence to flag image-to-variant mismatch before listing.

### Perceptual Media Graph (PMG) — EXPERIMENT
Clusters duplicate/near-duplicate media across suppliers/listings while preserving provenance.

### Marketplace Media Compiler (MMC) — ADOPT
Produces channel-specific media package from approved assets under marketplace rules and tenant policy.

### Synthetic Media Firewall (SMF) — ADOPT
Separates generated/edited assets from observed source evidence and enforces disclosure/policy gates.

### Media Quality Value Score (MQVS) — EXPERIMENT
Ranks candidate assets by expected utility, resolution, framing, variant correctness, provenance and policy fitness.

## Planned code families
`src/media/assets/*`, `src/media/provenance/*`, `src/media/fingerprint/*`, `src/media/variants/*`, `src/media/compiler/*`, `src/media/policy/*`.

# Cross-module technologies

## Acquisition Evidence Capsule (AEC) — ADOPT
A compact immutable/versioned downstream contract containing references to source offer evidence, geography/reach, canonical identity proof, media, freshness, truth classes, confidence/uncertainty, policy status and provenance. It reduces downstream coupling and LLM/Codex context size.

## Uncertainty Propagation Bus (UPB) — ADOPT
Standard uncertainty metadata flows through transformations. Consumers may reduce/increase uncertainty only with explicit method/evidence. No silent confidence inflation.

## Evidence Economy Scheduler (EES) — EXPERIMENT
Coordinates M02-M05: when budget/quota/compute is constrained, selects the next evidence-acquisition action with greatest expected decision value. Candidate objective combines opportunity exposure, uncertainty reduction, freshness urgency, request cost, source health and latency.

## Innovation governance
Every technology must record: problem, mechanism, expected benefit, complexity/cost, risks, benchmark/evaluation and ADOPT/EXPERIMENT/REJECT state. EXPERIMENT technologies are not mandatory production dependencies until evidence justifies promotion.

# Cross-module security
- External payloads untrusted.
- Tenant-private sourcing settings isolated.
- No secrets in evidence capsules/logs/AI prompts.
- Collectors have least-privilege credentials/network permissions.
- Media/file ingestion receives content validation and bounded processing.
- Evidence provenance/audit survives normalization.

# Cross-module observability
Metrics: source health; requests/cost/quota; evidence yield; freshness; collector drift/quarantine; economic-reach decisions; identity ambiguity/match reversals; pack mismatch prevention; media conflicts; AEC completeness; UPB uncertainty changes; EES decision value and regret.

# Cross-module test matrix
1. Source quota exhaustion degrades safely.
2. Collector schema drift quarantines suspicious output.
3. Implausible price/pack changes cannot silently enter canonical truth.
4. Economic reach rejects an apparently cheap but landed-cost-unprofitable source.
5. Ambiguous identity remains estimated/unknown as appropriate.
6. Pack algebra distinguishes unit vs multipack.
7. Identity revision preserves old decision snapshot.
8. Variant visual conflict is flagged.
9. Generated media remains distinguishable from source evidence.
10. AEC remains reproducible/versioned.
11. UPB cannot silently upgrade confidence.
12. EES never bypasses source policy merely for information value.

# Batch STOP CONDITION
`M02_M06_PLANNING_BATCH_COMPLETE` requires module-level MASTER/requirements/domain/data/API/security/observability/tests/decisions/file-map/Codex-context consistency, accepted cross-module contracts, no HIGH/CRITICAL unresolved dependency contradiction, and explicit UNKNOWNs assigned to later owning modules.
