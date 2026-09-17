# ML Hunter

ML Hunter is a **greenfield repository in governed product planning**. Product behavior, technology stack and deployable features have not yet been approved, so this repository intentionally does not claim them.

## Engineering model

This repository has adopted **GEF Bootstrap V1.0.0** and follows:

`ANALYZE → SOURCE CHECK → NEXT NECESSARY INCREMENT → WORK ORDER → CONTEXT LOCK → PREFLIGHT → EXECUTOR → TESTS/EVIDENCE → PR → EXACT-HEAD AUDIT → CHECKPOINT DELTA → MERGE → NEXT`

Start with [`SOURCE-HIERARCHY.md`](SOURCE-HIERARCHY.md) and [`PROJECT-MASTER.md`](PROJECT-MASTER.md).

## Current state

- Repository state: `GREENFIELD`
- Product maturity: `PLANNING`
- GEF adoption: `ADOPTED`
- Accepted adoption merge: `ab0c49b30cf3bf655dbe53f46837ffd0a85cab84`
- Product implementation: **0% / not started**
- Next legal Work Order: `MLH-WO-0002-PRODUCT-DISCOVERY`

## Validation

The repository-native governance validation command is:

```bash
bash scripts/validate-gef.sh
```

No product build, lint, typecheck or test command exists yet because no product stack has been approved. Adding fake commands is prohibited.
