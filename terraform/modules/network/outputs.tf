output "vcn_id" {
  description = "VCN OCID."
  value       = oci_core_vcn.this.id
}

output "public_subnet_id" {
  description = "Public subnet OCID."
  value       = oci_core_subnet.public.id
}

output "private_subnet_id" {
  description = "Private subnet OCID."
  value       = oci_core_subnet.private.id
}

output "internet_gateway_id" {
  description = "Internet gateway OCID."
  value       = oci_core_internet_gateway.this.id
}

output "nat_gateway_id" {
  description = "NAT gateway OCID."
  value       = oci_core_nat_gateway.this.id
}

output "service_gateway_id" {
  description = "Service gateway OCID."
  value       = oci_core_service_gateway.this.id
}
