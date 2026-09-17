# Source Legitimacy Passport (SLP)

Status: PLANNED CONTRACT
Owner: M21

## Purpose
Separate technical collectability from approved data use. A source is enabled only when capability and policy dimensions are compatible.

## Passport fields
Source identity/version; acquisition method; official API/feed/collector classification; policy/terms/robots evidence refs where applicable; authentication; data classes; allowed/forbidden purposes; geography; quota/rate constraints; retention/export/AI restrictions; review dates; evidence owner; certification state/version; change fingerprint.

## Certification
UNKNOWN -> CANDIDATE -> VERIFIED. Any evidence change may produce REVIEW_REQUIRED or RESTRICTED. REJECTED prevents activation. PAID_FUTURE marks valid but outside current cost policy.

## Invariants
- Technical capability does not imply permission.
- Missing legal/policy evidence is not fabricated.
- No fake identities/accounts, quota evasion or anti-control bypass.
- Policy changes do not retroactively rewrite historical passport versions.
- Downstream use is checked against purpose, not merely source access.
- AI_INFERENCE permission does not imply AI_TRAINING permission.
- Kill switch can disable a source independently of code deployment.

## Compliance Drift Sentinel
Periodically or event-driven when possible, compare policy/capability evidence fingerprints and review deadlines. Change downgrades confidence/certification according to policy; it does not autonomously make legal conclusions.
