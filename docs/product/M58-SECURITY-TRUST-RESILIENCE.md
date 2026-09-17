# M58 — Security, Trust & Resilience Platform

Status: DISCOVERY / V1 REQUIRED
Governed increment: `MLH-WO-0002-PRODUCT-DISCOVERY`

## Decision
Security is a first-class V1 product requirement, not a post-build hardening phase. M20 remains the foundational security/privacy module; M58 expands it into the operational security platform required for a multi-tenant SaaS handling marketplace/ERP OAuth credentials, financial/business data, automation privileges and AI integrations.

## Security principles
- Zero implicit trust between users, tenants, services, workers, integrations or admin surfaces.
- Tenant isolation is mandatory and testable.
- Least privilege and deny-by-default authorization.
- Strong authentication with MFA/passkey-ready design and secure session lifecycle.
- Sensitive credentials are never stored in plaintext and never exposed to LLM prompts/logs.
- Encryption in transit and at rest for sensitive data; envelope/key-management strategy evaluated before architecture freeze.
- Every high-impact action is attributable through tamper-resistant audit evidence.
- Automatic commerce actions require scoped permissions, policy limits, kill switches and rollback/reconciliation paths.
- Security controls are mapped to current OWASP web/API guidance and OWASP ASVS verification requirements before production acceptance.
- Dependency and software-supply-chain risk is part of the threat model.
- Backups are not considered valid until restoration is tested.
- Incident detection, containment, credential revocation and recovery are designed before production.
- Privacy/LGPD obligations, retention and deletion/export workflows are explicit.

## Sessions
M58.1 security architecture and trust boundaries
M58.2 formal threat modeling and abuse cases
M58.3 tenant isolation model
M58.4 identity/authentication architecture
M58.5 MFA and passkey readiness
M58.6 session/device management
M58.7 RBAC/ABAC and least privilege
M58.8 admin privilege separation and step-up authentication
M58.9 service/workload identity
M58.10 OAuth token security for Mercado Livre/Bling and future integrations
M58.11 secrets vault and key-management strategy
M58.12 encryption in transit/at rest and sensitive-field protection
M58.13 database row/object authorization and cross-tenant leakage tests
M58.14 API gateway/security controls
M58.15 rate limits, quotas and abuse protection
M58.16 WAF/bot/DDoS strategy appropriate to deployment tier
M58.17 webhook authenticity, replay protection and idempotency
M58.18 SSRF/injection/deserialization/input-validation defenses
M58.19 file/image ingestion security
M58.20 AI/LLM data-boundary and prompt-injection defenses
M58.21 tool/action authorization for AI agents
M58.22 automated-commerce safety policy engine
M58.23 price/stock/pause/publish transaction limits and kill switches
M58.24 immutable/tamper-evident security and commerce audit trail
M58.25 anomaly detection and account-takeover signals
M58.26 suspicious login/device/session alerts
M58.27 fraud/abuse and tenant misuse controls
M58.28 secure notification delivery and sensitive-data redaction
M58.29 dependency/SBOM/software-supply-chain security
M58.30 CI/CD secret scanning, SAST and dependency scanning
M58.31 container/runtime hardening
M58.32 environment separation and production access controls
M58.33 backup encryption and tested restore drills
M58.34 disaster recovery and ransomware-resilience planning
M58.35 incident response playbooks and severity model
M58.36 token/key revocation and emergency containment
M58.37 security observability/SIEM-ready event model
M58.38 vulnerability management and patch policy
M58.39 penetration-testing and adversarial security test plan
M58.40 OWASP ASVS/API verification matrix and release gate
M58.41 privacy/LGPD data inventory and minimization
M58.42 retention/deletion/export and tenant offboarding
M58.43 breach/incident notification workflow and evidence preservation
M58.44 security dashboard for platform administrators
M58.45 tenant-facing security center and session/integration visibility
M58.46 security acceptance criteria and production STOP CONDITION

## High-risk assets
- Mercado Livre OAuth credentials/tokens.
- Bling OAuth credentials/tokens and ERP-linked business data.
- Future supplier/API credentials.
- Tenant financial, sales, inventory and profitability data.
- Admin accounts and support capabilities.
- Automated repricing/pause/reactivation/publication privileges.
- AI tool permissions and provider credentials.
- Proprietary Hunter history, recommendation outcomes and sourcing intelligence.

## Required architecture boundaries
### Security Plane
Central policy and security services must be separable from product-domain logic: identity, authorization, secrets, audit, security events, abuse controls and emergency kill switches.

### Commerce Safety Plane
No AI model or collector may directly mutate a marketplace/ERP account. Proposed actions flow through validated domain commands, tenant policy, authorization, financial guardrails, idempotency, audit and reconciliation.

### AI Trust Boundary
LLMs receive the minimum data necessary for a task. Secrets/tokens are excluded. Tool calls are allowlisted and independently authorized. Untrusted marketplace/supplier text is treated as untrusted input and cannot override system policy.

## Release philosophy
`feature complete` does not mean `production ready`. Production acceptance requires security evidence. CRITICAL/HIGH unresolved findings block release unless governed exception policy explicitly permits otherwise.
