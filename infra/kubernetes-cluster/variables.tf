variable "hetzner_token" {
  description = "Hetzner Cloud API token"
  sensitive   = true
}

variable "environment" {
  description = "Environment name (e.g. dev, prod)"
  default     = "dev"
}

variable "server_type" {
  description = "Hetzner server type for the cluster node"
  default     = "cx33"
}

variable "location" {
  description = "Hetzner datacenter location"
  default     = "hel1"
}
