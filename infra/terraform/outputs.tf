output "server_ip" {
  description = "Public IPv4 address of the server"
  value       = hcloud_server.stackshop.ipv4_address
}

output "server_name" {
  description = "Server name in Hetzner"
  value       = hcloud_server.stackshop.name
}

output "dns_records" {
  description = "DNS records created in Cloudflare"
  value = {
    for name, record in cloudflare_record.stackshop : name => record.name
  }
}
