variable "name" {
  description = "Common name, a unique identifier"
  type        = string
}

variable "zone" {
  description = ""
  type        = string
  default     = "eu-central"
}

variable "vpc_cidr" {
  description = "VPC IP range in CIDR notation"
  type        = string
  default     = "192.168.0.0/16"
}

variable "subnets" {
  description = "A list of subnet declarations"
  type = list(object(
    {
      name = string
    }
  ))
  default = [
    {
      name = "default"
    }
  ]
}

variable "new_bits" {
  description = "How much VPC prefix must be shrunk for subnet allocation"
  type        = number
  default     = 8
}

variable "extra_labels" {
  description = "Map of additional labels to add to module's resources"
  type        = map(string)
  default     = {}
}
