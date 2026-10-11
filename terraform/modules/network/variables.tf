variable "compartment_ocid" {
  description = "OCI compartment OCID."
  type        = string
}

variable "name_prefix" {
  description = "Prefix used for network resource names."
  type        = string
}

variable "vcn_cidr" {
  description = "VCN CIDR block."
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR block."
  type        = string
}

variable "private_subnet_cidr" {
  description = "Private subnet CIDR block."
  type        = string
}

variable "freeform_tags" {
  description = "Freeform tags for network resources."
  type        = map(string)
  default     = {}
}
