# ML Hunter

ML Hunter is a **greenfield repository currently in governed planning/bootstrap**. Product behavior, technology stack and deployable features have not yet been approved, so this repository intentionally does not claim them.

## Engineering model

This repository adopts **GEF Bootstrap V1.0.0** and follows:

`ANALYZE → SOURCE CHECK → NEXT NECESSARY INCREMENT → WORK ORDER → CONTEXT LOCK → PREFLIGHT → EXECUTOR → TESTS/EVIDENCE → PR → EXACT-HEAD AUDIT → CHECKPOINT DELTA → MERGE → NEXT`

Start with [`SOURCE-HIERARCHY.md`](SOURCE-HIERARCHY.md) and [`PROJECT-MASTER.md`](PROJECT-MASTER.md).

## Current state

- Repository state: `GREENFIELD`
- Product maturity: `PLANNING / BOOTSTRAP`
- GEF adoption work order: `MLH-WO-0001-GEF-ADOPTION`
- First post-adoption work order: `MLH-WO-0002-PRODUCT-DISCOVERY`
- Product implementation: **not started**

## Validation

The repository-native governance validation command is:

```bash
bash scripts/validate-gef.sh
```

No product build, lint, typecheck or test command exists yet because no product stack has been approved. Adding fake commands is prohibited.
