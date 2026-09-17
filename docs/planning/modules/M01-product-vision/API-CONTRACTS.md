# M01 API Contracts
Status: PLAN-COMPLETE

M01 defines provider-neutral invariants, not endpoints. Consequential commands require authorization context and idempotency strategy. Material intelligence queries carry truth/freshness/evidence metadata where applicable. Provider payloads terminate at adapters. Errors are typed/domain-meaningful; degraded/UNKNOWN cannot become fake success. AI tools are bounded structured contracts and cannot bypass domain services. Tenant context is mandatory for tenant-private operations. Contracts must be versionable.