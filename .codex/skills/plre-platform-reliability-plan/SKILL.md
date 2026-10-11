# Skill: plre-platform-reliability-plan

## Purpose
Convert PLRE assessments and specialist findings into an executable reliability plan for the Spire Kubernetes platform. This skill coordinates decisions, backlog, evidence, runbooks, and learning loops across the platform lifecycle.

## When to use
- After platform assessment or specialist reviews.
- Before implementation waves for Kubernetes foundation, GitOps, observability, security, or runtime intelligence.
- During recurring ProdOps planning, diligence, and learning cycles.

## Inputs expected
- `README.md`, `AGENTS.md`, `docs/`, product roadmap, platform constraints, and ownership notes.
- `Platform_Capability_Assessment.md`, `Platform_Scorecard.md`, `GitOps_Release_Evidence.md`, `Observability_Coverage_Report.md`, `Security_Posture_Report.md`, and `Runtime_Intelligence_Report.md`.
- Existing `Platform_Reliability_Plan.md`, `Platform_Runbook.md`, and `Platform_Decision_Trail.md`.

## Activities
- Consolidate findings into a sequenced reliability roadmap.
- Define workstreams, owners, dependencies, risks, decision points, and evidence.
- Maintain the Decision Trail with rationale and alternatives.
- Define execution gates aligned to Continuous Diligence.
- Feed lessons learned back into assessment criteria and platform backlog.

## Outputs
- `Platform_Reliability_Plan.md`
- `Platform_Decision_Trail.md`
- `Platform_Runbook.md`
- `Platform_Deck.md`
- Updates to `Platform_Scorecard.md`

## Guardrails
- Do not implement infrastructure directly.
- Do not approve destructive changes without explicit human decision and evidence requirements.
- Every work item involving infrastructure must include plan, expected diff, risks, rollback path, and expected evidence.
- Keep the plan actionable, sequenced, and tied to product impact.
- Use the Decision Trail as the source of rationale for material choices.

## Related artifacts
- `references/reliability-plan-template.md`
- `references/decision-trail-template.md`
- `Platform_Reliability_Plan.md`
- `Platform_Decision_Trail.md`
- `Platform_Runbook.md`
- `Platform_Deck.md`
