variable "compartment_ocid" {
  description = "OCI compartment OCID."
  type        = string
}

variable "repository_name" {
  description = "OCI Container Registry repository display name."
  type        = string
}

variable "freeform_tags" {
  description = "Freeform tags for registry resources."
  type        = map(string)
  default     = {}
}
