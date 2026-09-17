# Bitemporal Hunter Timeline (BHT)

Status: PLANNED CONTRACT
Owner: M35

## Purpose
Preserve both when a fact/event applied in the outside/domain world and when ML Hunter learned or recorded it. This prevents late-arriving evidence from contaminating historical replay.

## Conceptual temporal fields
```yaml
valid_from: timestamp-or-null
valid_to: timestamp-or-null
observed_at: timestamp-or-null
learned_at: timestamp
recorded_at: timestamp
supersedes_ref: ref-or-null
```

## Semantics
- `valid_*`: period the evidence claims the state applied, when knowable.
- `observed_at`: when the source observation occurred.
- `learned_at`: when ML Hunter first had admissible access to the information.
- `recorded_at`: persistence time, useful for ingestion/recovery diagnostics.
- unknown temporal values remain null/UNKNOWN rather than guessed.

## Historical replay rule
For a replay cutoff T, evidence with `learned_at > T` is inadmissible for reconstructing what ML Hunter could have decided at T, even if its `valid_from` predates T.

## Example
A supplier invoice received on September 10 reveals that a fee applied since September 1. The fee may have `valid_from=Sep 1`, but if ML Hunter learned it on Sep 10, a Sep 5 historical replay cannot use it as known evidence.

## Invariants
- Late evidence does not rewrite learned-at history.
- Corrections supersede rather than destructively rewrite material decision history.
- Present-day counterfactual analysis is clearly distinguished from historical reconstruction.
- Financial/security/audit evidence follows stronger retention requirements where applicable.
- Timezone/clock normalization policy must be explicit in final stack architecture.
