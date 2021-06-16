output "vpc_id" {
  description = "VPC ID"
  value       = hcloud_network.default.id
}

output "vpc_ipv4_cidr" {
  description = "VPC IPv4 CIDR e.g. 10.0.0.0/16"
  value       = hcloud_network.default.ip_range
}

output "subnet_ids" {
  description = "Produces a map { 'subnet_name': 'id' }"
  value = {
    for subnet in var.subnets : subnet["name"] => hcloud_network_subnet.subnet[subnet["name"]]["network_id"]
  }
}

output "subnet_ipv4_cidr" {
  description = "Produces a map { 'subnet_name': 'cidr' }"
  value = {
    for subnet in var.subnets : subnet["name"] => hcloud_network_subnet.subnet[subnet["name"]]["ip_range"]
  }
}
