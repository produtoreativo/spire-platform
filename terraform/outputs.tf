output "cluster_ocid" {
  description = "OKE cluster OCID."
  value       = module.oke.cluster_id
}

output "region" {
  description = "OCI region configured for the foundation."
  value       = var.region
}

output "node_pool_ocid" {
  description = "OKE node pool OCID."
  value       = module.oke.node_pool_id
}

output "vcn_id" {
  description = "VCN OCID."
  value       = module.network.vcn_id
}

output "public_subnet_id" {
  description = "Public subnet OCID."
  value       = module.network.public_subnet_id
}

output "private_subnet_id" {
  description = "Private subnet OCID."
  value       = module.network.private_subnet_id
}

output "registry_namespace" {
  description = "OCI registry namespace."
  value       = module.registry.registry_namespace
}

output "registry_repository" {
  description = "OCI Container Registry repository name."
  value       = module.registry.repository_name
}

output "registry_repository_ocid" {
  description = "OCI Container Registry repository OCID."
  value       = module.registry.repository_id
}

output "kubeconfig_instructions" {
  description = "Command template to generate kubeconfig for the OKE cluster."
  value       = "oci ce cluster create-kubeconfig --cluster-id ${module.oke.cluster_id} --file $HOME/.kube/config --region ${var.region} --token-version 2.0.0 --kube-endpoint PRIVATE_ENDPOINT"
}

output "next_commands" {
  description = "Suggested local validation commands after apply."
  value = [
    "oci ce cluster get --cluster-id ${module.oke.cluster_id}",
    "oci ce node-pool get --node-pool-id ${module.oke.node_pool_id}",
    "oci artifacts container repository get --repository-id ${module.registry.repository_id}"
  ]
}

output "terraform_state_bucket" {
  description = "Terraform state bucket name when bootstrapped by this configuration."
  value       = try(oci_objectstorage_bucket.terraform_state[0].name, var.state_bucket_name)
}
