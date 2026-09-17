# Recovery Expectations

## Governance/repository recovery

- Before merge: correct or abandon the branch/PR.
- After merge: use a governed revert/forward-fix PR.
- Do not rewrite shared/default branch history to hide a bad change.
- Preserve evidence for failed/corrected candidates.

## Product recovery

No product persistence/runtime exists yet. Once architecture introduces stateful systems, the responsible Work Order must define backup, migration, rollback/roll-forward, integrity verification and partial-failure recovery before production acceptance.
