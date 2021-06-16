terraform {
  required_version = ">=0.12.0"

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = ">=1.26.0"
    }
  }

}

locals {
  common_labels = {
    ManagedBy = "terraform"
  }
}
