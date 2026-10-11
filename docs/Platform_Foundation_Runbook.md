# Platform Foundation Runbook

## Scope

This runbook covers Phase 1 validation for the Spire Platform Kubernetes foundation on OCI. It does not install applications, GitOps controllers, ingress, policy engines, identity providers, or observability stacks.

## Validate Terraform Locally

```bash
cd terraform/environments/dev
terraform fmt -recursive
terraform init \
  -backend-config="bucket=<state-bucket>" \
  -backend-config="namespace=<object-storage-namespace>" \
  -backend-config="key=dev/terraform.tfstate" \
  -backend-config="region=<oci-region>"
terraform validate
terraform plan -out=tfplan
```

Review `tfplan` before any apply.

## Generate Kubeconfig

After the cluster is provisioned:

```bash
cd terraform/environments/dev
oci ce cluster create-kubeconfig \
  --cluster-id "$(terraform output -raw cluster_ocid)" \
  --file "$HOME/.kube/config" \
  --region "<oci-region>" \
  --token-version 2.0.0 \
  --kube-endpoint PRIVATE_ENDPOINT
```

The API endpoint is private. Run this command from a network path that can reach the private endpoint.

## Verify Nodes

```bash
kubectl cluster-info
kubectl get nodes -o wide
kubectl get pods -A
```

Expected result:

- Kubernetes API responds.
- Node count matches `node_count`.
- Nodes are `Ready`.
- No Phase 2 applications are installed.

## Validate Registry

```bash
cd terraform/environments/dev
terraform output registry_namespace
terraform output registry_repository
terraform output registry_repository_ocid
oci artifacts container repository get \
  --repository-id "$(terraform output -raw registry_repository_ocid)"
```

Expected result:

- Repository exists.
- Repository is private.
- Namespace matches the OCI tenancy Object Storage namespace.

## Validate OCI Network

```bash
cd terraform/environments/dev
terraform output vcn_id
terraform output public_subnet_id
terraform output private_subnet_id
oci network vcn get --vcn-id "$(terraform output -raw vcn_id)"
oci network subnet get --subnet-id "$(terraform output -raw private_subnet_id)"
```

Expected result:

- VCN exists with the configured CIDR.
- Public subnet allows public IP assignment.
- Private subnet prohibits public IP assignment.
- Private route table uses NAT and service gateway routes.

## Initial Troubleshooting

### Terraform init fails with backend errors

- Confirm the Object Storage bucket exists.
- Confirm namespace, region, and bucket name.
- Confirm OCI CLI authentication works with `oci os ns get`.
- If bootstrapping the bucket with Terraform, run initial bootstrap with local state, then migrate state.

### Terraform validate fails on provider installation

- Confirm internet access to the Terraform provider registry.
- Confirm Terraform version is `>= 1.6.0`.
- Run `terraform init -upgrade` only during an intentional provider upgrade review.

### OKE cluster is created but kubeconfig cannot connect

- Confirm the endpoint is private.
- Run from a bastion, VPN, or approved network path.
- Check private subnet security rules and route paths.
- Confirm OCI CLI profile and region match the cluster.

### Nodes are not Ready

- Check node pool status in OCI.
- Confirm node shape and Kubernetes version are available in the selected region.
- Check private subnet egress through NAT and service gateway.
- Confirm required OCI policies are in place.

### Registry validation fails

- Confirm the repository OCID output.
- Confirm IAM permissions for Container Registry.
- Confirm region and namespace.
- Confirm the repository remains private unless a later decision changes it.
