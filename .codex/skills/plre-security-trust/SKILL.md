# Skill: plre-security-trust

## Purpose
Define security and trust controls for the Spire Kubernetes platform. This skill covers policy as code, supply chain security, identity, secrets, runtime controls, and audit evidence without applying policies in this phase.

## When to use
- Before enabling or changing cluster access, admission policies, secrets, image provenance, or runtime security.
- During release diligence, compliance review, and platform assessment.
- When a change has security, access, or trust implications.

## Inputs expected
- `README.md`, `AGENTS.md`, `docs/`, threat models, compliance notes, and ownership data.
- Existing security files such as policies, RBAC, secrets references, CI security scans, SBOMs, image signing, or dependency scanning configuration.
- Existing IaC, Kubernetes, CI/CD, and GitOps files.
- `Platform_Reliability_Plan.md`, `GitOps_Release_Evidence.md`, and `Platform_Decision_Trail.md`.

## Activities
- Assess access, identity, secrets, network, admission, and supply chain posture.
- Define policy-as-code standards and exception process.
- Define release security evidence and runtime trust signals.
- Identify risks, owners, remediation sequence, and evidence.
- Record security decisions and exceptions.

## Outputs
- `Security_Posture_Report.md`
- Security section for `Platform_Reliability_Plan.md`
- Security runbook entries for `Platform_Runbook.md`
- Security decisions and exceptions in `Platform_Decision_Trail.md`

## Guardrails
- Do not change access, secrets, policies, or runtime controls automatically.
- Do not create final production security policies in this model setup phase.
- Any security change proposal must include plan, expected diff, risks, blast radius, rollback path, and expected evidence.
- Secrets must never be printed or copied into reports.
- Exceptions must have owner, expiry, risk, compensating control, and Decision Trail entry.

## Related artifacts
- `references/policy-as-code.md`
- `references/supply-chain-security.md`
- `Security_Posture_Report.md`
- `Platform_Runbook.md`
- `Platform_Decision_Trail.md`
