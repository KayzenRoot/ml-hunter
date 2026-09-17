# Capability Gaps — 2026-09-17

## GitHub repository administration

Observed after adoption merge:

- `main` reports `protected: false`.
- Repository rulesets endpoint returned an empty list.
- The connected GitHub integration exposes repository/code/PR workflow operations but no administrative mutation for branch protection or ruleset creation.

## Impact

GEF adoption can operate with PR + exact-head CI/audit/merge discipline, but GitHub itself is not currently enforcing those controls on `main`.

## Compensating control

Until an administration-capable path is available:

- substantial changes must continue through governed branches/PRs;
- merge must use expected candidate head where supported;
- exact-head CI/audit evidence remains mandatory;
- no claim may state that branch protection is enabled.

## Follow-up

`MLH-GOV-HARDEN-0001` is IMPORTANT governance hardening, not evidence of product completion.
