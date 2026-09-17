# Evidence-Grounded Reasoning Envelope (EGRE)

Status: PLANNED CONTRACT
Owner: M28

## Purpose
Make AI outputs machine-checkable and honest about what is known, inferred, estimated or unknown.

## Conceptual output
```yaml
answer_version: version
task_ref: ref
claims:
  - claim_id: id
    statement: structured-or-text
    class: DETERMINISTIC_REF|EVIDENCE_BACKED|MODEL_INFERENCE|ESTIMATE|UNKNOWN
    evidence_refs: []
    confidence_method: ref-or-null
    consequential_domains: []
    verification_state: NOT_REQUIRED|REQUIRED|VERIFIED|FAILED|UNKNOWN
unknowns: []
next_evidence_actions: []
assumptions: []
model_trace_ref: ref
```

## Invariants
- Model confidence is not evidence.
- A claim cannot cite evidence not present in the allowed task context.
- Financial arithmetic references deterministic M09 outputs rather than being recreated authoritatively by the model.
- UNKNOWN remains explicit.
- Estimates expose assumptions/method where material.
- Consequential unverified claims cannot cross the Intelligence-to-Action Membrane as authoritative facts.
- Narrative may summarize structured claims but cannot upgrade their truth class.

## Prompt injection boundary
Marketplace/source/review/question text is untrusted data. Instructions embedded in external content cannot change tool permissions, tenant scope, system policy or verification requirements.
