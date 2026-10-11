# Platform Decision Trail

## 2026-07-01 - Separate Spire and Spire Platform

- Status: accepted
- Decision: Keep Spire product workloads and Spire platform foundation in separate scopes.
- Context: The platform must evolve as a reusable Kubernetes product capability and should not be coupled to application deployment details.
- Rationale: Separation improves ownership, review boundaries, reliability planning, and future GitOps promotion.
- Risks: Integration contracts between product and platform need clear documentation.
- Expected evidence: Separate repositories or directories, platform-specific Terraform, platform runbooks, and release evidence.
- Related artifacts: `terraform/`, `docs/Platform_Deck.md`, `docs/Platform_Foundation_Runbook.md`

## 2026-07-01 - Use Terraform for OCI Cloud Foundation

- Status: accepted
- Decision: Use Terraform to define OCI networking, OKE, registry, optional IAM policies, and remote state bootstrap.
- Context: The Kubernetes foundation needs reproducible and reviewable infrastructure changes.
- Rationale: Terraform provides plan review, modular structure, drift visibility, and PR-based governance.
- Risks: Incorrect provider permissions or IAM policy language can block provisioning. Remote state bucket bootstrap requires a manual or local-state step.
- Expected diff: VCN, subnets, gateways, route tables, security lists, OKE cluster, node pool, registry repository, optional IAM policy, and optional state bucket.
- Expected evidence: `terraform validate`, reviewed `terraform plan`, output values, and OCI resource checks.
- Rollback or recovery path: Use reviewed `terraform plan -destroy` only with explicit approval.
- Related artifacts: `terraform/README.md`, `terraform/environments/dev/terraform.tfvars.example`

## 2026-07-01 - Defer GitOps to Phase 2

- Status: accepted
- Decision: Do not install Argo CD, Flux, cert-manager, external-secrets, ingress controllers, Kong, OPA, Kyverno, Keycloak, or observability tools in Phase 1.
- Context: The foundation should be validated before application and platform add-ons are reconciled through GitOps.
- Rationale: Smaller phases reduce blast radius and make infrastructure evidence easier to review.
- Risks: Phase 1 leaves the cluster without production-grade in-cluster delivery, policy, ingress, identity, and observability add-ons.
- Expected evidence: No Kubernetes application manifests in Phase 1 and no in-cluster add-on installation commands.
- Related artifacts: `docs/Platform_Deck.md`, `terraform/README.md`

## Known Risks

- OCI IAM policies may require tenancy-specific adjustment before apply.
- OKE private endpoint access requires approved network connectivity for operators and automation.
- Terraform remote state bucket must exist before remote backend initialization.
- OKE Kubernetes versions and shapes must be checked against the selected OCI region before apply.
- Security lists are intentionally minimal and may need NSGs or tighter controls before production use.
- Phase 1 does not provide in-cluster observability, policy enforcement, ingress, secrets integration, or GitOps reconciliation.

## Next Steps

- Review and adjust `terraform/environments/dev/terraform.tfvars.example`.
- Bootstrap or manually create the Terraform state bucket.
- Run `terraform init`, `terraform fmt -recursive`, `terraform validate`, and `terraform plan`.
- Review IAM policy statements before enabling `create_iam_policies`.
- Capture plan evidence and update this Decision Trail before apply.
- Start Phase 2 GitOps Bootstrap after the foundation is provisioned and validated.
