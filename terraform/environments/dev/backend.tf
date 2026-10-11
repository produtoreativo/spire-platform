terraform {
  # Backend configuration is intentionally partial.
  # Create the Object Storage bucket first, then run terraform init with -backend-config values.
  backend "oci" {}
}
