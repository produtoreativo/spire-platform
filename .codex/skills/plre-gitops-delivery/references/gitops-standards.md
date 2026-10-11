# GitOps Standards

## Principles

- Git is the desired-state source of truth.
- Runtime state must be reconciled from reviewed, versioned changes.
- Promotion must be explicit, auditable, and reversible.
- Platform and application delivery should have clear ownership boundaries.
- Drift must be detected and treated as operational evidence.

## Repository Model

Recommended repository decisions to document:

- Monorepo or split platform and workload repositories.
- Environment folders and promotion strategy.
- Helm, Kustomize, or another packaging standard.
- Secret management and sealed references.
- Application ownership and approval rules.
- Branching, tagging, and release naming conventions.

## Required Controls

- Pull request review.
- Policy and security checks.
- Manifest rendering validation.
- Deployment health checks.
- Rollback instructions.
- Release evidence capture.
