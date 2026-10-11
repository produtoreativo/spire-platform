data "oci_identity_availability_domains" "this" {
  compartment_id = var.compartment_ocid
}

resource "oci_containerengine_cluster" "this" {
  compartment_id     = var.compartment_ocid
  kubernetes_version = var.kubernetes_version
  name               = "${var.name_prefix}-oke"
  vcn_id             = var.vcn_id
  freeform_tags      = var.freeform_tags

  endpoint_config {
    is_public_ip_enabled = false
    subnet_id            = var.endpoint_subnet_id
  }

  options {
    service_lb_subnet_ids = var.lb_subnet_ids
  }
}

resource "oci_containerengine_node_pool" "this" {
  cluster_id         = oci_containerengine_cluster.this.id
  compartment_id     = var.compartment_ocid
  kubernetes_version = var.kubernetes_version
  name               = "${var.name_prefix}-pool-1"
  node_shape         = var.node_shape
  freeform_tags      = var.freeform_tags

  node_shape_config {
    ocpus         = var.node_ocpus
    memory_in_gbs = var.node_memory_in_gbs
  }

  node_config_details {
    size = var.node_count

    placement_configs {
      availability_domain = data.oci_identity_availability_domains.this.availability_domains[0].name
      subnet_id           = var.node_subnet_id
    }
  }

  initial_node_labels {
    key   = "platform.spire.io/environment"
    value = var.name_prefix
  }
}
