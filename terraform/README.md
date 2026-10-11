# Spire Platform Kubernetes Foundation on OCI

This Terraform workspace defines Phase 1 of the Spire platform foundation on Oracle Cloud Infrastructure. It prepares the cloud and Kubernetes substrate for a later GitOps bootstrap phase.

Phase 1 creates only foundation infrastructure:

- OCI VCN with public and private subnets.
- Internet, NAT, and service gateways.
- Route tables and security lists.
- OKE cluster with a configurable initial node pool.
- OCI Container Registry repository for Spire images.
- Optional reviewable IAM policy resource.
- Optional Object Storage bucket for Terraform remote state bootstrap.

It does not install Kong, OPA, Kyverno, Keycloak, Prometheus, Grafana, Argo CD, Flux, cert-manager, external-secrets, ingress controllers, or application manifests.

## Prerequisites

- Terraform `>= 1.6.0`.
- OCI CLI installed and authenticated.
- OCI user, API key, fingerprint, tenancy OCID, compartment OCID, and region.
- Permissions to manage networking, OKE, Object Storage, Container Registry, and any IAM policies selected for the target compartment.
- A compartment dedicated or approved for the Spire platform foundation.

## OCI CLI Credentials

Configure OCI CLI before running Terraform:

```bash
oci setup config
oci iam region list
oci os ns get
```

The default provider configuration uses the standard OCI SDK and CLI configuration files. Keep private keys outside the repository.

## Remote State Bootstrap

The dev environment declares an OCI backend in `terraform/environments/dev/backend.tf`, but backend configuration is intentionally partial. The Object Storage bucket must exist before `terraform init` can use it.

Recommended bootstrap flow:

1. Create the Object Storage bucket manually in OCI, or temporarily run this configuration with local state and `create_state_bucket = true`.
2. Enable versioning on the bucket.
3. Initialize Terraform with backend configuration.

Example:

```bash
cd terraform/environments/dev
cp terraform.tfvars.example terraform.tfvars

terraform init \
  -backend-config="bucket=spire-platform-dev-terraform-state" \
  -backend-config="namespace=<object-storage-namespace>" \
  -backend-config="key=dev/terraform.tfstate" \
  -backend-config="region=sa-saopaulo-1"
```

If the bucket is created through Terraform with local state, migrate state to the remote backend immediately after the bucket exists.

## Initialize Terraform

```bash
cd terraform/environments/dev
cp terraform.tfvars.example terraform.tfvars
terraform init \
  -backend-config="bucket=<state-bucket>" \
  -backend-config="namespace=<object-storage-namespace>" \
  -backend-config="key=dev/terraform.tfstate" \
  -backend-config="region=<oci-region>"
```

Edit `terraform.tfvars` with real OCIDs and reviewed values before planning.

## Validate the Plan

```bash
terraform fmt -recursive
terraform validate
terraform plan -out=tfplan
```

Review the plan for:

- Expected VCN, subnet, gateway, route table, and security list changes.
- Expected OKE cluster and node pool shape, version, and node count.
- Expected registry repository.
- Any IAM policy statements if `create_iam_policies = true`.
- Any state bucket creation if `create_state_bucket = true`.

## Apply in the Future

Do not apply during model or PR review. When approved:

```bash
terraform apply tfplan
```

After apply, capture outputs and update the platform Decision Trail with the applied plan, evidence, and any drift from the expected result.

## Get Kubeconfig

After the OKE cluster exists:

```bash
terraform output -raw kubeconfig_instructions
oci ce cluster create-kubeconfig \
  --cluster-id "$(terraform output -raw cluster_ocid)" \
  --file "$HOME/.kube/config" \
  --region "$(terraform output -raw region)" \
  --token-version 2.0.0 \
  --kube-endpoint PRIVATE_ENDPOINT
```

The cluster endpoint is private. Run kubeconfig and `kubectl` commands from a network path that can reach the private subnet, such as a bastion, VPN, or approved operator workstation.

## Destroy Environment

Destroy is documented for controlled teardown only. Do not run without explicit approval and a reviewed destruction plan.

```bash
terraform plan -destroy -out=destroy.tfplan
terraform apply destroy.tfplan
```

Before destruction, export required evidence, confirm no production workloads depend on the cluster, and record approval in `docs/Platform_Decision_Trail.md`.

## Next Phase: GitOps Bootstrap

Phase 2 should bootstrap platform services into the OKE cluster through GitOps:

- Argo CD or Flux.
- cert-manager.
- external-secrets.
- ingress/controller.
- Kong.
- OPA or Kyverno.
- Keycloak.
- Base observability.

Phase 2 should keep cluster mutations declarative, reviewed, reversible, and tied to release evidence.
