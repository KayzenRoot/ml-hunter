# ML Hunter Test & Benchmark Plan

## Current validation scope

No product stack exists, so there are no legitimate product unit/integration/build commands yet. The current deterministic validation is governance-structure validation.

## Current command

```bash
bash scripts/validate-gef.sh
```

The same command is executed by `.github/workflows/gef-governance.yml`.

## Assurance ladder

As implementation appears, each Work Order must select the applicable levels:

1. structural/static checks;
2. focused/direct tests;
3. impacted dependency tests;
4. boundary/integration tests;
5. risk-expansion/regression tests;
6. full release-candidate assurance.

## Benchmarks

No product benchmark is defined yet. Performance targets must be tied to approved non-functional requirements before benchmark gates are created.

## Evidence binding

Evidence must record Work Order ID, exact candidate head, command/workflow, result, failures/corrections, security findings and residual risk.
