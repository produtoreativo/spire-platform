# Skill: plre-k8s-foundation

## Purpose
Define the Kubernetes foundation model for Spire without prematurely implementing infrastructure. This skill turns assessment findings into a safe foundation plan for clusters, environments, networking, identity, storage, baseline add-ons, and IaC.

## When to use
- When designing or revising Kubernetes cluster foundations.
- Before creating or changing cloud resources, clusters, networking, node pools, ingress, storage, or platform add-ons.
- During Continuous Diligence before infrastructure execution.

## Inputs expected
- `README.md`, `AGENTS.md`, `docs/`, architecture notes, and product constraints.
- Existing IaC folders such as `infra/`, `terraform/`, `tofu/`, `pulumi/`, or environment definitions when available.
- Existing Kubernetes folders such as `k8s/`, `clusters/`, `helm/`, `charts/`, or `manifests/` when available.
- `Platform_Capability_Assessment.md`, `Platform_Reliability_Plan.md`, and `Platform_Decision_Trail.md`.

## Activities
- Define target cluster foundation capabilities and environment topology.
- Identify IaC modules, state model, naming conventions, access boundaries, and lifecycle policies.
- Plan baseline platform add-ons without generating final manifests.
- Produce implementation sequence, risks, assumptions, dependencies, and evidence checklist.
- Prepare reviewable plans and diffs before any infrastructure creation, alteration, or removal.

## Outputs
- Foundation section for `Platform_Reliability_Plan.md`
- Infrastructure section for `Platform_Decision_Trail.md`
- Foundation runbook entries for `Platform_Runbook.md`
- Foundation evidence expectations for `Platform_Scorecard.md`

## Guardrails
- Do not provision clusters, cloud resources, or Kubernetes resources automatically.
- Do not create definitive Kubernetes manifests in this skill.
- Any infrastructure proposal must include plan, expected diff, risks, rollback notes, ownership, and evidence expected after execution.
- Prefer reversible, incremental changes with explicit approval gates.
- Keep Spire-specific context visible while keeping templates reusable for other products.

## Related artifacts
- `references/cluster-foundation.md`
- `references/infrastructure-as-code.md`
- `Platform_Reliability_Plan.md`
- `Platform_Runbook.md`
- `Platform_Decision_Trail.md`
