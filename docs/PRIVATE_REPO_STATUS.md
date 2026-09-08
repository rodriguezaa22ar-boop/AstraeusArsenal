# Atlas Private Repository Status

This document explains the current status of the private implementation repository and how it relates to the public trust surface.

## Purpose

The private repository is the implementation and operator runtime source. It
retains engineering context that is not required in the public trust surface.

The public `atlas-trust-infrastructure` repository is the public trust surface
for reviewer-facing proof, governance contracts, release evidence, and
readiness language. The private repository currently trails the public trust
repository and should be treated as private implementation history until a
governance sync is intentionally performed.

## What Belongs in Private

Private repository contents include:

- Retained engineering context
- Operator runtime source
- Build and release tooling
- Target records and operation state
- Shared intel and session state
- Retained experimental and refinement notes

## What Does Not Belong in Private

The private repository must not become a dumping ground for anything that is
already reviewer-relevant. When implementation details become part of the
public trust contract, they belong in the public repository through the
governance sync process.

## Sync Contract

The public/private split is intentional:

- Public: reviewer-facing trust, governance, schemas, release evidence, and
  readiness language.
- Private: implementation and operator runtime source.

A governance sync is the intentional mechanism for moving approved public
content from private implementation history into the public trust surface.

## Current Status

- Private repository: implementation and operator runtime source
- Public repository: reviewer-facing trust surface
- Sync status: trailing; public governance stack is authoritative for public
  trust material
