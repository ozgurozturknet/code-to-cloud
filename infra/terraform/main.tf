data "hcloud_ssh_key" "default" {
  name = "code-to-cloud"
}

resource "hcloud_firewall" "stackshop" {
  name = "${var.environment}-stackshop-fw"

  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "22"
    source_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "80"
    source_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "443"
    source_ips = ["0.0.0.0/0", "::/0"]
  }
}

# TODO: define the hcloud_server resource.
#   name         = "${var.environment}-stackshop"
#   image        = "ubuntu-24.04"
#   server_type  = var.server_type
#   location     = var.location
#   ssh_keys     = [data.hcloud_ssh_key.default.id]
#   firewall_ids = [hcloud_firewall.stackshop.id]
#   user_data    = file("${path.module}/cloud-init.yml")
