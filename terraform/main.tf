locals {
  name_prefix = "${var.project_name}-${var.environment}"
  common_tags = merge(
    {
      project     = var.project_name
      environment = var.environment
      managed_by  = "terraform"
      phase       = "platform-foundation"
    },
    var.freeform_tags
  )
}

module "network" {
  source = "./modules/network"

  compartment_ocid    = var.compartment_ocid
  name_prefix         = local.name_prefix
  vcn_cidr            = var.vcn_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  freeform_tags       = local.common_tags
}

module "oke" {
  source = "./modules/oke"

  compartment_ocid   = var.compartment_ocid
  name_prefix        = local.name_prefix
  vcn_id             = module.network.vcn_id
  endpoint_subnet_id = module.network.private_subnet_id
  node_subnet_id     = module.network.private_subnet_id
  lb_subnet_ids      = [module.network.public_subnet_id]
  kubernetes_version = var.kubernetes_version
  node_shape         = var.node_shape
  node_count         = var.node_count
  node_ocpus         = var.node_ocpus
  node_memory_in_gbs = var.node_memory_in_gbs
  freeform_tags      = local.common_tags
}

module "registry" {
  source = "./modules/registry"

  compartment_ocid = var.compartment_ocid
  repository_name  = "${var.project_name}/${var.environment}/spire"
  freeform_tags    = local.common_tags
}

resource "oci_identity_policy" "platform_foundation" {
  count = var.create_iam_policies ? 1 : 0

  compartment_id = var.compartment_ocid
  name           = "${replace(local.name_prefix, "-", "_")}_foundation_policy"
  description    = "Minimal Spire platform foundation policies for OKE and registry operations."
  statements     = var.iam_policy_statements
  freeform_tags  = local.common_tags
}

data "oci_objectstorage_namespace" "state" {
  compartment_id = var.compartment_ocid
}

resource "oci_objectstorage_bucket" "terraform_state" {
  count = var.create_state_bucket ? 1 : 0

  compartment_id = var.compartment_ocid
  namespace      = data.oci_objectstorage_namespace.state.namespace
  name           = var.state_bucket_name
  access_type    = "NoPublicAccess"
  storage_tier   = "Standard"
  versioning     = "Enabled"
  freeform_tags  = local.common_tags
}
