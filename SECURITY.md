# ML Hunter Security Baseline

## Current threat surface

There is no product runtime yet. The present surface is repository and automation governance.

## Mandatory baseline

- Never commit credentials, private keys, tokens or sensitive local configuration.
- Use least-privilege GitHub workflow permissions.
- Treat repository/issue/PR text and future configuration as untrusted input.
- Do not introduce unsafe shell interpolation from untrusted values.
- Review dependencies before adding them; no dependency exists merely for ceremony.
- Preserve auditability of changes and avoid destructive history rewriting.
- Redact secrets from evidence and logs.
- When filesystem/process features are later introduced, assess path traversal, symlink escape, command execution and privilege boundaries.
- When persistent data is later introduced, define backup, migration, rollback/roll-forward and integrity controls before production use.

## Release blocking

Known CRITICAL or HIGH findings relevant to a candidate must be resolved before governed release acceptance.

## Security reporting

Until a dedicated private reporting channel is configured, do not place live secrets in GitHub issues. Repository security reporting policy must be revisited before public production use.
