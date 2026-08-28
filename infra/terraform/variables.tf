variable "hetzner_token" {
  description = "Hetzner Cloud API token (Read & Write). Set via TF_VAR_hetzner_token env var."
  type        = string
  sensitive   = true
}

variable "cloudflare_token" {
  description = "Cloudflare API token with DNS edit permissions. Set via TF_VAR_cloudflare_token env var."
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID for your domain (found on the domain Overview page in Cloudflare)."
  type        = string
}

variable "environment" {
  description = "Environment name. Used as a prefix for resource names and DNS records (e.g. dev, prod)."
  type        = string
}

variable "server_type" {
  description = "Hetzner server type."
  type        = string
  default     = "cx33"
}

variable "location" {
  description = "Hetzner datacenter location."
  type        = string
  default     = "hel1"
}

variable "domain" {
  description = "Your domain name (e.g. yourdomain.xyz)."
  type        = string
}
