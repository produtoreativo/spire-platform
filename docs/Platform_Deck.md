# Platform Deck

## Objective

Spire Platform is the Kubernetes foundation for operating Spire product workloads with reliable, observable, secure, automated, and evidence-driven practices.

Phase 1 establishes the OCI and OKE foundation only. It prepares the platform for a later GitOps bootstrap phase without installing application or platform add-ons inside the cluster.

## Phase 1 Scope

- OCI network foundation with VCN, public subnet, private subnet, internet gateway, NAT gateway, service gateway, route tables, and security lists.
- OKE cluster with private Kubernetes API endpoint and initial configurable node pool.
- OCI Container Registry repository for Spire images.
- Optional Terraform-managed Object Storage bucket for remote state bootstrap.
- Optional reviewable IAM policy resource for OKE and registry operations.
- Documentation for validation, kubeconfig, registry checks, and teardown planning.

## Architectural Decisions

- Keep `spire` product workloads separate from `spire-platform` platform foundation.
- Use Terraform for cloud foundation resources because OCI infrastructure must be versioned, reviewable, and reproducible.
- Use a private OKE endpoint and private worker subnet as the default posture.
- Use a public subnet only for future load balancer exposure and controlled ingress needs.
- Defer GitOps and in-cluster platform add-ons to Phase 2.
- Keep IAM policy creation disabled by default until tenancy-specific statements are reviewed.

## Provisioned Resources

- VCN and DNS label.
- Public and private regional subnets.
- Internet, NAT, and service gateways.
- Public and private route tables.
- Public and private security lists.
- OKE cluster.
- OKE node pool.
- OCI Container Registry repository.
- Optional Object Storage bucket for Terraform state.
- Optional IAM policy resource.

## Out of Scope

- Kong.
- OPA or Kyverno.
- Keycloak.
- Prometheus.
- Grafana.
- Argo CD or Flux.
- cert-manager.
- external-secrets.
- Application Kubernetes manifests.
- Production workload deployment.
- Runtime observability stack.
- GitOps bootstrap.

## Evidence Expected

- Reviewed Terraform plan.
- Terraform validate output.
- OKE cluster OCID.
- Node pool OCID and node readiness evidence.
- VCN and subnet OCIDs.
- Registry namespace and repository OCID.
- Kubeconfig generation evidence from an approved network path.
- Decision Trail entries for accepted risks and execution approvals.
