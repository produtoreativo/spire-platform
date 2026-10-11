output "cluster_ocid" {
  description = "OKE cluster OCID."
  value       = module.spire_platform_foundation.cluster_ocid
}

output "region" {
  description = "OCI region configured for the foundation."
  value       = module.spire_platform_foundation.region
}

output "node_pool_ocid" {
  description = "OKE node pool OCID."
  value       = module.spire_platform_foundation.node_pool_ocid
}

output "vcn_id" {
  description = "VCN OCID."
  value       = module.spire_platform_foundation.vcn_id
}

output "public_subnet_id" {
  description = "Public subnet OCID."
  value       = module.spire_platform_foundation.public_subnet_id
}

output "private_subnet_id" {
  description = "Private subnet OCID."
  value       = module.spire_platform_foundation.private_subnet_id
}

output "registry_namespace" {
  description = "OCI registry namespace."
  value       = module.spire_platform_foundation.registry_namespace
}

output "registry_repository" {
  description = "OCI Container Registry repository name."
  value       = module.spire_platform_foundation.registry_repository
}

output "registry_repository_ocid" {
  description = "OCI Container Registry repository OCID."
  value       = module.spire_platform_foundation.registry_repository_ocid
}

output "kubeconfig_instructions" {
  description = "Command template to generate kubeconfig for the OKE cluster."
  value       = module.spire_platform_foundation.kubeconfig_instructions
}

output "next_commands" {
  description = "Suggested local validation commands after apply."
  value       = module.spire_platform_foundation.next_commands
}
