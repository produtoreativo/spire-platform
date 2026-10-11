# PLRE Capability Model

PLRE treats the Kubernetes platform as a product. The platform must be reliable, observable, secure, automated, evolvable, and ready for AI-assisted operations.

## Domains

1. Platform Foundation: cluster architecture, environments, networking, storage, access model, baseline add-ons, ownership, and lifecycle.
2. Delivery Automation: CI/CD, GitOps, release evidence, promotion strategy, rollback, and progressive delivery.
3. Observability First: logs, metrics, traces, events, dashboards, alerts, SLOs, and telemetry quality.
4. Reliability Engineering: service objectives, failure modes, runbooks, incident readiness, resilience testing, and capacity planning.
5. Runtime Intelligence: runtime signal correlation, incident analysis, anomaly detection, cost and capacity forecasts.
6. Autonomous Operations: approved automation, human-in-the-loop workflows, remediation plans, and operational controls.
7. Security & Trust: policy as code, identity, secrets, network controls, admission controls, vulnerability management, and compliance evidence.
8. AI Readiness: structured context, documented decisions, machine-readable evidence, safe automation boundaries, and platform APIs usable by agents.
9. Agentic Platform: specialized agents, task routing, evidence contracts, decision trails, and controlled execution flows.
10. Continuous Learning: retrospectives, scorecards, recurring assessments, lessons learned, and backlog refinement.

## Assessment Rules

- Score each domain from 1 to 5 using `maturity-levels.md`.
- Every score needs evidence, an assumption, or an explicit "not found".
- Score the current operating reality, not the desired architecture.
- Record risks using product impact, operational impact, likelihood, and reversibility.
- Convert gaps into sequenced recommendations that support Continuous Assessment and Continuous Diligence.
