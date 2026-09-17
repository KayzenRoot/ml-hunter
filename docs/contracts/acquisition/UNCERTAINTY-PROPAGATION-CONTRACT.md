# Uncertainty Propagation Contract (UPC)

Status: PLANNED CONTRACT

## Purpose
Prevent confidence laundering as evidence moves from collection to identity, pricing, profit, ranking, AI and automation.

## Conceptual envelope
```yaml
truth_class: OBSERVED|DERIVED|ESTIMATED|UNKNOWN
confidence: optional-normalized-value
confidence_method: method-ref-or-null
observed_at: timestamp-or-null
calculated_at: timestamp-or-null
freshness_state: fresh|aging|stale|expired|unknown
provenance_refs: refs
algorithm_version: version-or-null
uncertainty_factors:
  - factor
```

## Rules
1. OBSERVED describes provenance, not guaranteed correctness.
2. Confidence is optional; fake precision is prohibited.
3. Transformations record method/version when changing confidence/uncertainty.
4. UNKNOWN cannot become OBSERVED without new observation evidence.
5. Multiple weak signals do not automatically become one strong signal.
6. Staleness may lower decision fitness even when historical observation was high quality.
7. Financial engines must expose sensitivity when material uncertain inputs can change the decision.
8. AI may explain uncertainty but cannot upgrade deterministic truth classification.
9. Automation policy may define maximum uncertainty/age by action severity.

## Evaluation
Track calibration where ground truth later becomes available: identity match reversals, realized price/cost differences, availability errors, decision reversals and confidence-vs-outcome reliability.
