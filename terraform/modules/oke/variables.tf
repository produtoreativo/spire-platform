variable "compartment_ocid" {
  description = "OCI compartment OCID."
  type        = string
}

variable "name_prefix" {
  description = "Prefix used for OKE resource names."
  type        = string
}

variable "vcn_id" {
  description = "VCN OCID."
  type        = string
}

variable "endpoint_subnet_id" {
  description = "Subnet OCID for the OKE Kubernetes API endpoint."
  type        = string
}

variable "node_subnet_id" {
  description = "Subnet OCID for OKE worker nodes."
  type        = string
}

variable "lb_subnet_ids" {
  description = "Subnet OCIDs available for future OCI load balancers."
  type        = list(string)
}

variable "kubernetes_version" {
  description = "OKE Kubernetes version."
  type        = string
}

variable "node_shape" {
  description = "OCI compute shape for worker nodes."
  type        = string
}

variable "node_count" {
  description = "Initial worker node count."
  type        = number
}

variable "node_ocpus" {
  description = "OCPUs per worker node for flexible shapes."
  type        = number
}

variable "node_memory_in_gbs" {
  description = "Memory in GB per worker node for flexible shapes."
  type        = number
}

variable "freeform_tags" {
  description = "Freeform tags for OKE resources."
  type        = map(string)
  default     = {}
}
