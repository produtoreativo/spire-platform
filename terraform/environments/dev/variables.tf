variable "tenancy_ocid" {
  description = "OCI tenancy OCID."
  type        = string
}

variable "compartment_ocid" {
  description = "OCI compartment OCID for the dev foundation."
  type        = string
}

variable "region" {
  description = "OCI region identifier."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name used for resource naming."
  type        = string
  default     = "spire-platform"
}

variable "vcn_cidr" {
  description = "CIDR block for the platform VCN."
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet."
  type        = string
  default     = "10.20.10.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet."
  type        = string
  default     = "10.20.20.0/24"
}

variable "kubernetes_version" {
  description = "OKE Kubernetes version."
  type        = string
}

variable "node_shape" {
  description = "OCI compute shape for OKE worker nodes."
  type        = string
  default     = "VM.Standard.E4.Flex"
}

variable "node_count" {
  description = "Initial OKE node count."
  type        = number
  default     = 2
}

variable "node_ocpus" {
  description = "OCPUs per OKE worker node for flexible shapes."
  type        = number
  default     = 1
}

variable "node_memory_in_gbs" {
  description = "Memory in GB per OKE worker node for flexible shapes."
  type        = number
  default     = 16
}

variable "create_iam_policies" {
  description = "Create minimal reviewable IAM policies for OKE and registry access."
  type        = bool
  default     = false
}

variable "iam_policy_statements" {
  description = "OCI IAM policy statements to create when create_iam_policies is true."
  type        = list(string)
  default     = []
}

variable "create_state_bucket" {
  description = "Create the Object Storage bucket intended for Terraform remote state bootstrap."
  type        = bool
  default     = false
}

variable "state_bucket_name" {
  description = "OCI Object Storage bucket name for Terraform state."
  type        = string
  default     = "spire-platform-dev-terraform-state"
}

variable "freeform_tags" {
  description = "Freeform tags applied to supported OCI resources."
  type        = map(string)
  default     = {}
}
