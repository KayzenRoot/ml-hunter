# ML Hunter Agent / Executor Instructions

Before changing this repository:

1. Read `SOURCE-HIERARCHY.md`.
2. Read `.engineering/CHECKPOINT.md` and `.engineering/CHECKPOINT.json`.
3. Read relevant ADRs and the active Work Order.
4. Verify the Context Lock is still valid against Git/source changes.
5. Change only Work Order scope.
6. Run required validation and produce evidence.
7. Use PR + exact-head audit for substantial work.
8. Never promote a checkpoint based only on executor self-assertion.

## Review language

Final technical review should be written in Brazilian Portuguese unless the Work Order requires another language. Canonical code/data/docs may use English when the project later adopts that convention.

## Preservation

No force-push, destructive history rewrite, secret exposure or speculative scope expansion without explicit authorization.

## Agent skills

### Matt Pocock skill invocation

When the `mattpocock-skills` plugin is available, automatically use a model-invoked skill whose description matches the current task; these skills do not require the user to type a slash command. Use `/ask-matt` when skill routing is unclear. User-invoked workflows remain user-led. Do not force-fit a skill or let it override the user's request, this repository's governance/security rules, or deterministic evidence.

Prefer deterministic Git, text search, AST, hashes, tests, lint, typecheck, and build checks whenever they are sufficient. Use Jev only when available and useful for bounded context relevance, triage, classification, reranking, claim verification, comparison, or explicit-gate decisions. Jev output is advisory; never send it secrets or credentials.

### Issue tracker

Issues and specs for this repository live in GitHub Issues. Use the `gh` CLI and follow `docs/agents/issue-tracker.md`.

### Triage labels

Use `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, and `wontfix` for the five canonical triage roles. Follow `docs/agents/triage-labels.md`.

### Domain docs

This repository uses a single-context domain layout. Read relevant glossary and ADR material before domain changes; follow the actual paths recorded in `docs/agents/domain.md`.
