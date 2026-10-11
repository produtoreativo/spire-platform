# Skill: plre-runtime-intelligence

## Purpose
Turn runtime evidence into operational insight for the Spire Kubernetes platform. This skill supports incident analysis, anomaly review, capacity and cost forecasting, and recommendations for adaptive operations.

## When to use
- After incidents, failed releases, SLO breaches, capacity pressure, or cost anomalies.
- During operational reviews and Continuous Learning loops.
- When preparing agent-ready evidence for future autonomous operations.

## Inputs expected
- `README.md`, `AGENTS.md`, `docs/`, architecture notes, and service ownership data.
- Runtime evidence from observability systems, incidents, release evidence, capacity reports, and cost reports.
- `Observability_Coverage_Report.md`, `GitOps_Release_Evidence.md`, `Platform_Runbook.md`, and `Platform_Decision_Trail.md`.

## Activities
- Correlate runtime signals across deployments, incidents, SLOs, capacity, and cost.
- Produce incident analysis with timeline, impact, contributing factors, and follow-up actions.
- Identify forecast risks for capacity, saturation, reliability, and cost.
- Recommend automation candidates with human approval boundaries.
- Feed learnings back into the reliability plan and scorecard.

## Outputs
- `Runtime_Intelligence_Report.md`
- Incident analysis updates for `Platform_Runbook.md`
- Reliability and learning updates for `Platform_Reliability_Plan.md`
- Runtime decisions and lessons in `Platform_Decision_Trail.md`

## Guardrails
- Do not execute remediation automatically.
- Do not change scaling, cost controls, workloads, or infrastructure without an approved plan.
- Any runtime action proposal must include plan, expected diff, risks, rollback path, and expected evidence.
- Keep recommendations tied to evidence, not speculation.
- Preserve incident facts and separate them from hypotheses.

## Related artifacts
- `references/incident-analysis.md`
- `references/capacity-cost-forecast.md`
- `Runtime_Intelligence_Report.md`
- `Platform_Runbook.md`
- `Platform_Decision_Trail.md`
