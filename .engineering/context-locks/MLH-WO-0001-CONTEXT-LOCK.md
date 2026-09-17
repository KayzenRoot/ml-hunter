# Context Lock — MLH-WO-0001

## Git base

- Repository: `KayzenRoot/ml-hunter`
- Base branch: `main`
- Base SHA: `a0c49adae9a7738c6780011c412027f8df40b463`

## Critical source fingerprint set

At Work Order start there was only the seed `README.md`; there were no prior project sources to hash/migrate. The adoption commit itself establishes the first canonical source pack.

## Decision Closure Capsule

- Repository is GREENFIELD.
- GEF target version is 1.0.0.
- Product objective/stack must remain unresolved during adoption.
- No legacy content is authorized for deletion because none existed.

## Implementation Seed Tree

`SOURCE-HIERARCHY.md`, `PROJECT-MASTER.md`, `SCOPE.md`, `REQUIREMENTS.md`, `ARCHITECTURE.md`, `SECURITY.md`, `TEST-BENCHMARK-PLAN.md`, `DEPLOYMENT.md`, `BACKLOG.md`, `DEFINITION-OF-DONE.md`, `DECISIONS-LEDGER.md`, `.engineering/**`, `.github/**`, `scripts/validate-gef.sh`.

## Executor Navigation Map

Read: Source Hierarchy → Checkpoint → WO-0001 → receipts → canonical docs → validation script/workflow.

## Execution waves

1. Canonical sources and control-plane artifacts.
2. Deterministic validation + GitHub templates.
3. PR/evidence/audit/checkpoint promotion.

## Validation reuse

No pre-existing validation exists. Structural validation must run fresh on the adoption candidate.

## Critical path

Create governance pack → run CI → exact-head audit → merge → post-adoption checkpoint.

## STALE triggers

Any change to base branch history, Scope, DoD, Architecture, security policy or ADR-0001 before acceptance requires re-check/rebase of this context lock.
