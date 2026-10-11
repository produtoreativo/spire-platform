# Release Validation

## Validation Stages

1. Source validation: tests, linting, dependency checks, and build provenance.
2. Configuration validation: rendered manifests, schemas, policy checks, and secrets references.
3. Pre-release validation: environment readiness, capacity, SLO risk, and dependency health.
4. Runtime validation: rollout status, health checks, logs, metrics, traces, and alerts.
5. Post-release validation: SLO impact, error budget impact, incident review, and release evidence.

## GitOps Release Evidence Template

- Release identifier.
- Commit, image digest, and artifact provenance.
- Target environment and affected services.
- Validation checks and results.
- Policy decisions and exceptions.
- Rollout health.
- Observability links or evidence.
- Rollback readiness.
- Decision Trail entry.
