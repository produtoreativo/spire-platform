# Telemetry Standards

## Signals

- Metrics: service health, latency, traffic, errors, saturation, resource usage, queue depth, and platform component health.
- Logs: structured logs with timestamp, service, environment, version, request or trace correlation, severity, and error context.
- Traces: distributed request paths across critical dependencies and external calls.
- Events: deployments, scaling changes, node events, policy decisions, certificate renewals, and incident milestones.

## Coverage Expectations

- Every critical service should expose RED or USE metrics as appropriate.
- Every platform component should have health and saturation signals.
- Every release should capture runtime validation evidence.
- Every alert should map to a runbook action or decision path.
- Telemetry gaps should be tracked in the Platform Scorecard.

## Evidence

- Dashboards or dashboard definitions.
- Alert rules and notification routes.
- SLO definitions and burn-rate logic.
- Release validation links.
- Incident analysis inputs.
