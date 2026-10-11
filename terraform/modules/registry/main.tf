data "oci_objectstorage_namespace" "this" {
  compartment_id = var.compartment_ocid
}

resource "oci_artifacts_container_repository" "this" {
  compartment_id = var.compartment_ocid
  display_name   = var.repository_name
  is_public      = false
  freeform_tags  = var.freeform_tags
}
