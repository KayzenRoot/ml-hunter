# ML Hunter Deployment

## Current state

There is no deployable product and therefore no production deployment procedure yet.

## Deployment contract before first production release

The selected architecture must document:

- environments and promotion path;
- configuration and secret handling;
- build/package provenance;
- migration requirements;
- health verification;
- rollback or roll-forward strategy;
- observability required for release validation;
- recovery ownership and runbook;
- exact release/version semantics.

Deployment automation must not be created speculatively before the runtime target is known.
