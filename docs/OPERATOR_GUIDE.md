# Operator Guide

This guide covers security operator workflows for Atlas.

## What Operators Do

Security operators use Atlas to:

- Register targets and track scope state
- Run recon and capture shared intel
- Rank action lanes and plan bounded validation
- Record evidence, findings, and validation outcomes
- Produce reports, handoffs, closeouts, and release artifacts

## Operator Tooling

- `labctl` — target management, sessions, tool distillation, release builds
- `intelctl` — shared intel inspection, graph and path views
- `wiremap` — recon and capture workflows
- `vector` — action lane planning and bounded validation runs
- `atlas` — control plane: evidence, findings, validation, reports, release

## Typical Operator Flow

1. Register target: `labctl target add <name> <address>`
2. Open session: `labctl session open <name> <target>`
3. Plan and run recon: `wiremap workflow plan <name> <target>`, then `wiremap workflow run`
4. Analyze intel: `intelctl summary`, `intelctl graph <target>`
5. Plan validation: `vector plan <lane>`, then `vector run validate`
6. Record findings: `atlas finding add <title>`
7. Close operation: `atlas op close`
8. Produce release artifact: `atlas release packet <name>`

## Scope Discipline

Operators must preserve scope checks, capability classification, and approval
gates where required. Target-touching workflows should not expand scope without
explicit approval.

## Metadata-Only Records

Atlas records metadata-only proof chains. Operators must not embed raw logs,
secrets, credentials, tokens, packet captures, raw request/response bodies, or
unredacted evidence bodies in Atlas records.

## Retained Evidence

Release artifacts are built from clean checkouts and verified with retained
SLSA provenance references. See `docs/RELEASE_TRUST.md` and
`docs/atlas/SLSA_PROVENANCE.md`.

## Demo

A synthetic demo operation is available at `docs/demo/DEMO_OPERATION.md`. It
uses local-safe synthetic data only and shows the full trust lifecycle without
raw runtime evidence.
