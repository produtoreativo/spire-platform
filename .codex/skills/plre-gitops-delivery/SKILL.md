# Skill: plre-gitops-delivery

## Purpose
Define the GitOps and release delivery model for the Spire Kubernetes platform. This skill focuses on safe, auditable promotion from source to runtime without implementing final deployment manifests in the current phase.

## When to use
- When designing CI/CD, GitOps repositories, release promotion, rollback, or evidence collection.
- Before introducing Argo CD, Flux, Helm, Kustomize, progressive delivery, or policy gates.
- During release readiness checks and Continuous Diligence reviews.

## Inputs expected
- `README.md`, `AGENTS.md`, `docs/`, product architecture, and service ownership notes.
- Existing CI/CD files such as `.github/workflows/`, `.gitlab-ci.yml`, or pipeline definitions.
- Existing deployment files such as `k8s/`, `helm/`, `charts/`, `clusters/`, `environments/`, or GitOps app definitions.
- `Platform_Reliability_Plan.md`, `Platform_Decision_Trail.md`, and prior release evidence.

## Activities
- Define GitOps repository structure, environment promotion, review gates, and rollback strategy.
- Define release evidence requirements and validation stages.
- Identify policy, security, observability, and reliability gates for delivery.
- Produce release readiness recommendations and evidence templates.
- Record decisions and unresolved risks.

## Outputs
- `GitOps_Release_Evidence.md`
- Delivery section for `Platform_Reliability_Plan.md`
- Release runbook entries for `Platform_Runbook.md`
- Delivery decisions in `Platform_Decision_Trail.md`

## Guardrails
- Do not deploy workloads or mutate clusters automatically.
- Do not create final production manifests in this planning phase.
- Any proposed delivery change must include plan, expected diff, risks, rollback path, and expected evidence.
- Releases should be traceable from commit to runtime evidence.
- Failed validation must stop promotion until reviewed.

## Related artifacts
- `references/gitops-standards.md`
- `references/release-validation.md`
- `GitOps_Release_Evidence.md`
- `Platform_Runbook.md`
- `Platform_Decision_Trail.md`
