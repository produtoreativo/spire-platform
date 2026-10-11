output "registry_namespace" {
  description = "OCI registry namespace."
  value       = data.oci_objectstorage_namespace.this.namespace
}

output "repository_id" {
  description = "OCI Container Registry repository OCID."
  value       = oci_artifacts_container_repository.this.id
}

output "repository_name" {
  description = "OCI Container Registry repository name."
  value       = oci_artifacts_container_repository.this.display_name
}
