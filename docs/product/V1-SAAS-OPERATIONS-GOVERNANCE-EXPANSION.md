# ML Hunter V1 — SaaS Operations & Governance Expansion

Status: DISCOVERY / V1 REQUIRED SCOPE
Governed increment: `MLH-WO-0002-PRODUCT-DISCOVERY`

## Decision
All capabilities described here belong to ML Hunter V1 unless a later governed decision explicitly changes scope. The V1 is intentionally a broad first complete product rather than a narrow prototype.

## Benchmarking principle
ML Hunter continuously benchmarks leading marketplace-intelligence and seller-operations products. Features are classified as ADOPT, ADAPT, IMPROVE, INVENT or REJECT. We copy neither proprietary implementation nor unsupported metrics. The goal is to combine proven SaaS patterns with ML Hunter's local/global sourcing, profit-first intelligence, Mercado Livre specialization and evidence-grounded AI.

## M59 — SaaS Commercial Platform & Entitlements
Purpose: turn the product into a governable commercial SaaS without coupling business logic to a payment provider.

Sessions/capabilities:
1. product catalog and commercial plans;
2. monthly/annual billing cycles;
3. free/trial/guarantee strategy as configurable commercial policy;
4. plan eligibility by tenant maturity/use case;
5. entitlement engine separated from billing provider;
6. feature limits and metered usage;
7. user/seat limits;
8. marketplace/account limits;
9. tracked-product/seller/keyword/source limits;
10. collector/API/AI quotas;
11. storage/history limits;
12. add-ons and quantity-based add-ons;
13. prorations;
14. upgrades/downgrades;
15. scheduled plan changes;
16. cancellation and reactivation;
17. grace periods;
18. failed-payment/dunning lifecycle;
19. invoices/receipts/tax-document boundary;
20. coupons/promotions/referrals;
21. trials and conversion analytics;
22. plan recommendations based on real usage;
23. overage policy;
24. soft limit vs hard limit behavior;
25. enterprise/custom contracts;
26. grandfathered plans;
27. regional currency/tax readiness;
28. billing-provider abstraction;
29. webhook reconciliation/idempotency;
30. entitlement audit trail;
31. admin override with reason/expiry;
32. revenue/MRR/ARR/churn/expansion analytics;
33. cost-to-serve and gross-margin analytics;
34. tenant profitability;
35. AI/API cost attribution;
36. plan simulation and unit economics;
37. abuse-resistant trials;
38. billing support workflow;
39. data retention after cancellation;
40. export-before-delete experience.

Principle: billing decides commercial state; Entitlement Engine decides capabilities. Product modules never contain payment-provider-specific logic.

## M60 — Admin SaaS Command Center
Purpose: operate the entire SaaS from one governed control plane.

Capabilities:
- global business dashboard: tenants, users, MRR/ARR where applicable, churn, active trials, conversions, usage, gross margin and cost-to-serve;
- tenant 360: plan, entitlements, integrations, marketplace accounts, source coverage, AI/API usage, jobs, incidents, security events, support history and business health;
- feature flags and staged rollout;
- plan/entitlement editor with audit;
- quotas and emergency overrides;
- source/collector control;
- integration health;
- queue/job/retry/dead-letter controls;
- notification delivery health;
- AI provider/model/cost controls;
- marketplace and source API quota dashboard;
- security/risk console;
- tenant suspension/read-only/recovery modes;
- impersonation/support session only through explicit authorization, reason, time limit and immutable audit;
- announcement/maintenance center;
- experiment control;
- release cohort management;
- support/escalation console;
- data-governance request console;
- billing/revenue console;
- platform unit-economics dashboard;
- anomaly and fraud/abuse signals;
- export/reporting;
- admin action approval gates for high-impact operations.

## M61 — Guided Onboarding & Activation Engine
Purpose: minimize time-to-first-value rather than merely completing account setup.

Onboarding state machine:
SIGNUP -> PROFILE -> GOAL -> VERTICAL -> REGION -> MARKETPLACE -> ERP -> SOURCES -> ECONOMICS -> HUNTER_PROFILE -> FIRST_SCAN -> FIRST_OPPORTUNITY -> FIRST_ACTION -> ACTIVATED.

Capabilities:
- persona/use-case selection;
- vertical/category packs;
- CEP/region/radius setup;
- marketplace/ERP connection wizard;
- source selection and automatic coverage discovery;
- financial assumptions wizard;
- risk and automation preference setup;
- recommended Saved Hunters/templates;
- demo/sandbox mode before integrations;
- sample opportunity walkthrough;
- progress checklist;
- contextual education embedded in workflow;
- health checks after each integration;
- resume onboarding across devices;
- activation telemetry;
- friction/drop-off detection;
- AI onboarding assistant grounded in current setup;
- personalized next step;
- first-value milestones;
- onboarding versioning/migrations when product changes;
- tenant readiness score.

Primary activation target: user reaches a trustworthy, explainable opportunity and understands the next profitable action.

## M62 — Customer Success, Education & Growth Coach
Purpose: make complex intelligence usable by beginners while giving advanced operators depth.

Capabilities:
- Hunter Academy with short task-oriented lessons;
- contextual tutorials and guided tours;
- beginner/intermediate/advanced learning paths;
- marketplace and sourcing fundamentals;
- profitability and capital education;
- security/automation education;
- searchable knowledge base;
- release education for new features;
- webinars/replays/content framework;
- strategy playbooks by vertical/business model;
- progress and competency tracking;
- customer health score;
- adoption score by module;
- unused-value detector: valuable features paid for but not used;
- success milestones tied to outcomes, not clicks;
- proactive tips based on tenant data;
- quarterly/monthly business-review generator;
- AI Hunter Coach that explains data and teaches the user how to reason about it;
- CSM workflow readiness for higher plans;
- enterprise onboarding/training readiness;
- feedback/NPS/CSAT and qualitative feedback pipeline;
- feature-request linkage to tenant context;
- churn-risk signals and save workflows without manipulative dark patterns.

## M63 — Data Governance, Ownership & Lineage
Purpose: make ML Hunter's growing data asset trustworthy, explainable, portable and legally governable.

Data classes:
PUBLIC_SOURCE, LICENSED_SOURCE, TENANT_PRIVATE, TENANT_DERIVED, PLATFORM_DERIVED, SECRET, PERSONAL_DATA, FINANCIAL, SECURITY, AI_INPUT, AI_OUTPUT, AUDIT.

Capabilities:
- data catalog;
- schema ownership;
- dataset owner/steward;
- field-level classification;
- provenance and lineage;
- source/license metadata;
- observed vs calculated vs estimated vs AI-inferred labeling;
- confidence/freshness metadata;
- tenant ownership boundaries;
- shared-vs-private derivation rules;
- retention schedules by class;
- deletion/anonymization workflows;
- legal hold readiness;
- consent/legal-basis metadata where applicable;
- data subject request workflow where applicable;
- export/portability;
- import validation;
- correction/dispute workflow;
- immutable audit/event history where required;
- data quality scorecards;
- lineage-aware recalculation when source data changes;
- model/algorithm version attached to derived metrics;
- reproducible opportunity snapshots;
- AI evidence snapshots;
- historical snapshot policy;
- backup/restore governance;
- tenant offboarding data lifecycle;
- internal data-access audit;
- future data residency controls;
- analytics-safe anonymization/aggregation;
- prohibition on cross-tenant leakage or unauthorized model training.

## M64 — Experimentation & Profit Optimization Lab
Purpose: optimize for realized profit, capital velocity and risk-adjusted outcomes rather than vanity metrics.

Experiment targets:
- price;
- listing title/content/media where marketplace rules permit;
- bundles/kits;
- purchase/test quantity;
- reorder thresholds;
- repricing policy;
- sourcing strategy;
- notification strategy;
- Saved Hunter/ranking weights;
- onboarding and product UX;
- AI recommendation variants.

Experiment contract:
HYPOTHESIS -> ELIGIBILITY -> BASELINE -> VARIANT -> GUARDRAILS -> RUN -> OBSERVE -> REALIZED ECONOMICS -> DECISION -> LEARNING.

Required safeguards:
- tenant opt-in/permissions for commercial experiments;
- marketplace policy compliance;
- deterministic profitability floor;
- sample-size/confidence disclosure;
- no deceptive customer-facing dark patterns;
- stop-loss/kill switch;
- maximum exposure/capital at risk;
- no uncontrolled simultaneous experiments on same decision surface;
- experiment collision detection;
- immutable assignment/history;
- holdout/control readiness;
- pre/post analysis when A/B is impossible;
- seasonality/confounder notes;
- profit, margin, ROI, time-to-cash, returns and stock impact as outcome metrics;
- promotion from experiment to policy only after governed acceptance.

Proprietary concept: Profit Experiment Score (PES), a confidence-aware summary of realized economic improvement and risk, never a substitute for underlying metrics.

## M65 — Support, Diagnostics & Self-Healing Operations
Purpose: resolve problems before users need human support and give support staff evidence rather than guesswork.

User-facing Diagnostics Center:
- Mercado Livre connection test;
- Bling connection test;
- supplier/source test;
- AI provider health;
- notification/Telegram test;
- collector freshness;
- listing sync/reconciliation;
- billing/entitlement state;
- quota state;
- background job health;
- data freshness;
- security/session state;
- guided fix with safe actions;
- downloadable/redacted diagnostic bundle;
- incident/status awareness.

Internal support platform:
- tenant timeline;
- correlation/request IDs;
- integration error history;
- jobs/retries/dead letters;
- webhook receipts;
- reconciliation history;
- entitlement/billing history;
- feature flags/releases;
- recent config changes;
- audit/security events;
- sanitized logs;
- known-issue matching;
- runbooks;
- severity/SLA framework;
- escalation ownership;
- support session audit;
- incident linkage;
- root-cause and postmortem linkage.

Self-healing patterns:
- token refresh where supported;
- retry with bounded exponential backoff;
- circuit breaker;
- dead-letter replay after validation;
- reconciliation repair;
- stale-source quarantine;
- automatic degradation to safe/read-only behavior;
- provider fallback;
- duplicate-event suppression;
- user notification when automatic repair cannot safely continue.

Proprietary concept: Hunter Doctor, an evidence-grounded diagnostic engine that correlates integration, data, job, marketplace and configuration signals, proposes likely root cause and executes only explicitly safe repair playbooks.

## M66 — Tenant Data Portability & Integration Hub
Purpose: avoid data lock-in and make ML Hunter composable.

Capabilities:
- CSV/XLSX/JSON exports by governed dataset;
- scheduled exports;
- import templates and validation;
- mapping wizard;
- export of opportunity/history/financial/market data according to entitlement and rights;
- BI-ready extracts;
- webhook/API/MCP readiness;
- integration credentials scoped per tenant;
- connector catalog;
- import dry-run;
- duplicate detection;
- rollback/reconciliation;
- provenance retained through imports;
- data rights/license restrictions respected in exports.

## M67 — Product Analytics, Adoption & Internal Intelligence
Purpose: understand whether ML Hunter itself creates user value.

Metrics:
- activation funnel;
- time-to-first-opportunity;
- time-to-first-action;
- time-to-first-realized-profit;
- feature adoption;
- Saved Hunter usage;
- opportunity-to-purchase conversion;
- purchase-to-listing conversion;
- listing-to-sale conversion;
- recommendation acceptance/rejection;
- realized-vs-projected error;
- prevented-loss events;
- support burden;
- onboarding drop-off;
- retention/cohort analysis;
- tenant health;
- cost-to-serve;
- AI/API consumption per outcome;
- feature value vs infrastructure cost.

No invasive analytics by default; telemetry follows privacy/data-governance policy.

## M68 — Incident, Continuity & Disaster Recovery
Purpose: treat availability, data integrity and commercial safety as business requirements.

Capabilities:
- incident severity model;
- on-call/escalation readiness;
- public/internal status model;
- runbooks;
- communication templates;
- backup verification;
- restore drills;
- RPO/RTO targets by subsystem;
- regional/provider outage strategy;
- marketplace/API outage degradation;
- AI provider outage fallback;
- collector/source outage behavior;
- billing-provider outage behavior;
- read-only safe mode;
- commerce automation freeze mode;
- emergency global kill switch;
- reconciliation after outage;
- postmortem and corrective-action tracking;
- disaster recovery evidence in release/operations audits.

## Cross-cutting proprietary technologies introduced

### 1. Hunter Value Loop (HVL)
Connects onboarding, opportunity discovery, action, realized outcome, education and retention. The platform optimizes time-to-realized-value rather than login frequency.

### 2. Profit Entitlement Meter (PEM)
Entitlements and quotas are observable as cost/value units so plans can evolve without hard-coding arbitrary feature gates. It does not charge automatically; it supplies evidence for commercial plan design.

### 3. Hunter Doctor
Evidence-grounded support/diagnostic correlation and safe repair engine described in M65.

### 4. Profit Experiment Score (PES)
Confidence-aware economic experiment summary described in M64.

### 5. Data Truth Envelope (DTE)
Every decision-critical value can carry origin, timestamp, freshness, confidence, calculation/model version and evidence references. This enables reproducibility and prevents observed facts, estimates and AI inference from being silently mixed.

### 6. Value-to-Cost Telemetry (VCT)
Links infrastructure/API/AI spend to useful outcomes such as opportunities discovered, prevented losses and realized profit. Enables SaaS unit economics and cheapest-adequate-model optimization.

## V1 closure gaps after this expansion
These areas are now first-class. Remaining macro topics to review before freezing the V1 Feature Universe:
1. marketplace advertising/PPC intelligence and automation, if supported/valuable for Mercado Livre;
2. returns/refunds/claims/reputation operations;
3. team collaboration/work management for multi-user tenants;
4. fraud/abuse/commercial anomaly protection beyond core security;
5. internationalization, currencies, taxes and future multi-marketplace expansion boundaries;
6. accessibility and UX quality standards;
7. legal/compliance operating model beyond collector/source policy;
8. developer platform/API/MCP ecosystem depth.

These are discovery candidates, not silently accepted requirements until reviewed.