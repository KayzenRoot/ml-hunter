# M01 File Map — Product Foundation

Status: PLANNED

M01 is primarily a product-truth module. It seeds cross-cutting product foundation files rather than feature implementation.

## Planned implementation/configuration ownership

```yaml
- path: src/core/product/product-capabilities.*
  kind: domain
  responsibility: canonical capability identifiers used to describe ML Hunter product surfaces without coupling to billing or providers
  exports: [ProductCapability]
  inputs: []
  invariants: [capability IDs are stable and provider-neutral]
  errors: []
  tests: [tests/core/product/product-capabilities.*]
  observability: []
  security: [capability existence does not imply tenant entitlement]
  status: PLANNED

- path: src/core/product/truth-classification.*
  kind: domain
  responsibility: canonical OBSERVED/DERIVED/ESTIMATED/UNKNOWN truth classification vocabulary
  exports: [TruthClass]
  inputs: []
  invariants: [UNKNOWN cannot be coerced into observed truth]
  errors: []
  tests: [tests/core/product/truth-classification.*]
  observability: []
  security: [external/AI content remains untrusted]
  status: PLANNED

- path: src/core/product/decision-evidence.*
  kind: domain
  responsibility: base evidence reference contract for material recommendations and decisions
  exports: [EvidenceRef, EvidenceSet]
  inputs: [TruthClass]
  invariants: [material decision evidence remains traceable/versionable]
  errors: [InvalidEvidenceReference]
  tests: [tests/core/product/decision-evidence.*]
  observability: [evidence completeness metric]
  security: [evidence references must respect tenant visibility]
  status: PLANNED

- path: src/core/product/automation-mode.*
  kind: domain
  responsibility: canonical MANUAL/ASSISTED/AUTOPILOT vocabulary and safe default
  exports: [AutomationMode]
  inputs: []
  invariants: [default is MANUAL unless accepted policy states otherwise]
  errors: []
  tests: [tests/core/product/automation-mode.*]
  observability: [actions by automation mode]
  security: [mode alone never grants authorization]
  status: PLANNED
```

## Codex note
Exact language/extensions and repository source layout are intentionally unresolved until foundation architecture/stack planning closes. Codex SHALL use the final architecture file manifest rather than infer extensions from this conceptual map.
