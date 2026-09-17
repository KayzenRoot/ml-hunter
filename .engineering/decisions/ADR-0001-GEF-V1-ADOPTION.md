# ADR-0001 — Adopt GEF Bootstrap V1.0.0

- Status: `ACCEPTED`
- Date: 2026-09-17
- Accepted via: PR #1
- Exact audited candidate: `505031d0074250d38c663dffbedf75ce53ae5eb3`
- Merge SHA: `ab0c49b30cf3bf655dbe53f46837ffd0a85cab84`

## Context

`KayzenRoot/ml-hunter` was created as an empty greenfield repository for a new system planning effort. No product architecture, code or legacy conventions existed to preserve.

## Decision

Adopt GEF Bootstrap V1.0.0 as the engineering governance model, using a small repository-native source pack and `.engineering/` control plane.

## Consequences

- Substantial changes require bounded Work Orders and evidence.
- Exact-head technical audit is required before governed acceptance.
- Product implementation remains blocked until discovery closes objective and requirements.
- GEF adoption does not imply any percentage of product implementation completion.
- Until repository administration tooling can configure protection, the process relies on disciplined PR + exact-head merge controls recorded in GEF evidence.
