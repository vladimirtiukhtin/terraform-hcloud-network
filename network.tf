resource "hcloud_network" "default" {
  name     = var.name
  ip_range = var.vpc_cidr
  labels   = merge(local.common_labels, var.extra_labels)
}

resource "hcloud_network_subnet" "subnet" {
  for_each = {
    for index, subnet in var.subnets : subnet["name"] => merge(subnet, { index = index })
  }
  network_id   = hcloud_network.default.id
  type         = "cloud"
  network_zone = var.zone
  ip_range     = cidrsubnet(hcloud_network.default.ip_range, var.new_bits, each.value["index"])
}
