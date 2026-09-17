# ML Hunter Architecture

## Status

`UNDECIDED` for the product. No application architecture or technology stack is approved yet.

## Governance architecture

The repository uses a lightweight control plane:

- canonical source pack at repository root;
- `.engineering/` for checkpoints, Work Orders, decisions, receipts, evidence, audits and context locks;
- `.github/` for PR/issue workflow and CI;
- `scripts/` for deterministic repository validation.

## Architecture decision rule

A product architecture may only become authoritative after:

1. product objective and requirements are approved;
2. material options/trade-offs are recorded;
3. an ADR/decision closes the choice;
4. affected Scope/Requirements/Security/Test/Deployment documents are synchronized.

## Current prohibited assumptions

Do not assume web, desktop, mobile, CLI, AI-agent, data, blockchain, game, monorepo, framework, database, cloud, model provider or deployment target until discovery establishes it.
