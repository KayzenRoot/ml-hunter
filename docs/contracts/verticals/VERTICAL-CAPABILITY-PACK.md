# Vertical Capability Pack (VCP)

Status: PLANNED CONTRACT
Owner: M41

## Purpose
Allow ML Hunter to support many lawful commerce verticals without hard-coding grocery assumptions into the core domain.

## Capability states
SUPPORTED | PARTIAL | UNSUPPORTED | UNKNOWN

## Conceptual pack
```yaml
vertical_id: id
version: version
identity:
  required_attributes: []
  optional_attributes: []
  variant_rules: []
units_and_pack: {}
storage_and_handling: {}
logistics: {}
returns_risk: {}
compatibility_fitment: {}
expiry_shelf_life: {}
warranty_electrical: {}
policy_hooks: []
economic_components: []
marketplace_requirements: []
source_requirements: []
unknown_constraints: []
```

## Examples of specialization
- Grocery/FMCG: expiry, pack/unit normalization, temperature/storage.
- Electronics: MPN/model, voltage, warranty and compatibility.
- Automotive: fitment/model/year/part compatibility.
- Fashion: size/color/material variants and return-profile inputs.
- Beauty: volume, expiry and relevant policy/regulatory attributes.
- Tools/electrical: technical specifications, voltage/power/compatibility.

These are examples, not exhaustive hard-coded category definitions.

## Invariants
- Core truth, provenance, tenant, authorization and financial semantics cannot be overridden by a vertical pack.
- UNKNOWN mandatory constraint is never silently defaulted from another vertical.
- Pack changes are versioned and historical decisions retain the pack version used.
- Category-specific expected losses/returns are assumptions/evidence inputs, not fabricated constants.
- Marketplace/source capability restrictions are evaluated independently of vertical support.
- A new vertical must pass portability/test gates before consequential automation is enabled.

## Category Constraint Compiler
The compiler combines VCP + tenant policy + marketplace/source capabilities + geography + economic policy into a versioned constraint set. Conflicts remain explicit and can produce BLOCK/RESEARCH/REVIEW rather than arbitrary precedence.
