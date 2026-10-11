# Skill: plre-observability-first

## Purpose
Define observability as a first-class platform capability for Spire. This skill specifies telemetry standards, SLOs, coverage expectations, alert quality, and evidence without deploying observability components in this phase.

## When to use
- Before platform or workload releases that require reliability evidence.
- When defining metrics, logs, traces, dashboards, alerts, or SLOs.
- During incident reviews, release validation, and Continuous Assessment.

## Inputs expected
- `README.md`, `AGENTS.md`, `docs/`, service architecture, and user journey notes.
- Existing observability configuration such as dashboards, alerts, OpenTelemetry, Prometheus, Grafana, Loki, Tempo, Datadog, New Relic, or cloud monitoring files.
- Incident reports, SLO definitions, and release evidence.
- `Platform_Reliability_Plan.md`, `Platform_Runbook.md`, and `Platform_Decision_Trail.md`.

## Activities
- Define telemetry standards for platform components and workloads.
- Map critical user journeys to SLIs, SLOs, alerts, and dashboards.
- Assess observability coverage and evidence gaps.
- Define release and incident evidence requirements.
- Record SLO decisions and alerting guardrails.

## Outputs
- `Observability_Coverage_Report.md`
- SLO section for `Platform_Reliability_Plan.md`
- Observability entries for `Platform_Runbook.md`
- Observability and SLO decisions in `Platform_Decision_Trail.md`

## Guardrails
- Do not deploy monitoring stacks or mutate alerting systems automatically.
- Do not create final production dashboards or alert rules in this phase.
- Proposed observability changes must include plan, expected diff, risks, noise impact, and expected evidence.
- Alerts must be tied to user impact or actionable platform risk.
- SLOs must include measurement source, window, owner, and response expectation.

## Related artifacts
- `references/telemetry-standards.md`
- `references/slo-standards.md`
- `Observability_Coverage_Report.md`
- `Platform_Runbook.md`
- `Platform_Decision_Trail.md`
