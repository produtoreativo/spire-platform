# PLRE - Platform Reliability Engineering Agents

PLRE extends the ProdOps framework for the Spire platform by treating Kubernetes as a product capability, not only as infrastructure. The goal is to build, operate, and evolve a platform that is reliable, observable, secure, automated, evidence-driven, and prepared for AI-assisted operations.

The PLRE operating model follows the ProdOps loop: assess the current state, plan the next improvement, execute only with diligence and explicit evidence, collect operational proof, and learn from runtime outcomes. Agents must not execute destructive changes automatically. Any creation, alteration, or removal of infrastructure must first produce a plan, expected diff, risks, rollback or recovery notes, and expected evidence.

## PLRE Skills

- `plre-platform-assessment`: assesses current platform capability, maturity, evidence, gaps, and risks.
- `plre-k8s-foundation`: plans Kubernetes cluster foundation, environment topology, IaC, access, networking, storage, and baseline platform services.
- `plre-gitops-delivery`: plans GitOps delivery, release validation, promotion, rollback, and release evidence.
- `plre-observability-first`: defines telemetry, dashboards, alerts, SLOs, and observability coverage.
- `plre-security-trust`: defines security posture, policy as code, supply chain trust, secrets, identity, and exceptions.
- `plre-runtime-intelligence`: analyzes runtime evidence, incidents, capacity, cost, anomalies, and automation candidates.
- `plre-platform-reliability-plan`: consolidates findings into an executable reliability plan, scorecard, runbook, and decision trail.

## When to Use Each Agent

- `platform-assessor`: use at the beginning of a platform cycle, before major architecture decisions, and during Continuous Assessment.
- `k8s-foundation-agent`: use before creating or changing clusters, environments, IaC modules, networking, storage, access, or baseline add-ons.
- `gitops-delivery-agent`: use before changing CI/CD, GitOps repositories, release promotion, rollback, or validation gates.
- `observability-agent`: use before defining or changing telemetry, SLOs, dashboards, alerts, release checks, or incident evidence.
- `security-agent`: use before changing access, secrets, policies, image trust, admission controls, network controls, or compliance evidence.
- `runtime-intelligence-agent`: use after incidents, failed releases, SLO breaches, capacity pressure, cost anomalies, or operational reviews.
- `reliability-plan-agent`: use after assessment and specialist reviews to sequence work, maintain the roadmap, and connect decisions to evidence.

## Expected Artifacts

- `Platform_Deck.md`: executive and stakeholder narrative for platform direction, maturity, risks, and roadmap.
- `Platform_Capability_Assessment.md`: scored assessment of PLRE domains with evidence, assumptions, and gaps.
- `Platform_Reliability_Plan.md`: sequenced improvement plan with workstreams, risks, expected diffs, rollback notes, and evidence.
- `Platform_Decision_Trail.md`: source of rationale for assumptions, decisions, alternatives, exceptions, and learning.
- `Platform_Runbook.md`: operational procedures for releases, incidents, access, recovery, and platform maintenance.
- `Platform_Scorecard.md`: maturity, reliability, security, observability, delivery, and learning score tracking.
- `GitOps_Release_Evidence.md`: release validation, provenance, deployment health, rollback readiness, and runtime evidence.
- `Observability_Coverage_Report.md`: telemetry, dashboard, alert, SLO, and evidence coverage.
- `Security_Posture_Report.md`: identity, policy, secrets, supply chain, runtime controls, exceptions, and residual risks.
- `Runtime_Intelligence_Report.md`: incidents, runtime signal correlation, capacity, cost, anomalies, recommendations, and lessons.

## PLRE Maturity Model

Domains:

1. Platform Foundation
2. Delivery Automation
3. Observability First
4. Reliability Engineering
5. Runtime Intelligence
6. Autonomous Operations
7. Security & Trust
8. AI Readiness
9. Agentic Platform
10. Continuous Learning

Levels:

1. Manual
2. Standardized
3. Automated
4. Measured
5. Adaptive

Agents must score the current operating reality, not the desired future state. Scores require repository evidence, runtime evidence, stakeholder-provided facts, or an explicit assumption.

## Connection to ProdOps

Continuous Assessment is handled primarily by `platform-assessor`, supported by specialist agents when a domain needs deeper review. It produces maturity scores, gaps, risks, and evidence requirements.

Continuous Diligence is handled by the specialist agents and the `reliability-plan-agent`. Before execution, agents must produce the plan, expected diff, risks, rollback or recovery path, approval point, and expected evidence. After execution by an approved human or pipeline, agents collect evidence and update the scorecard, runbook, and Decision Trail.

Continuous Learning is handled through `runtime-intelligence-agent` and `reliability-plan-agent`. Incidents, failed releases, SLO misses, cost changes, and operational findings must update the reliability plan and the Decision Trail so the platform improves with evidence instead of opinion.
