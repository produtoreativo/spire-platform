module "spire_platform_foundation" {
  source = "../../"

  tenancy_ocid          = var.tenancy_ocid
  compartment_ocid      = var.compartment_ocid
  region                = var.region
  environment           = var.environment
  project_name          = var.project_name
  vcn_cidr              = var.vcn_cidr
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  kubernetes_version    = var.kubernetes_version
  node_shape            = var.node_shape
  node_count            = var.node_count
  node_ocpus            = var.node_ocpus
  node_memory_in_gbs    = var.node_memory_in_gbs
  create_iam_policies   = var.create_iam_policies
  iam_policy_statements = var.iam_policy_statements
  create_state_bucket   = var.create_state_bucket
  state_bucket_name     = var.state_bucket_name
  freeform_tags         = var.freeform_tags
}
