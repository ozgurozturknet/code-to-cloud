locals {
  # For prod: no prefix. For any other environment: "env-" prefix on subdomains.
  # e.g. dev -> "dev-stackshop.yourdomain.xyz"
  #      prod -> "stackshop.yourdomain.xyz"
  prefix = var.environment == "prod" ? "" : "${var.environment}-"

  subdomains = toset([
    "stackshop",
    "user",
    "product",
    "order",
    "cart",
    "search",
    "review",
  ])
}

resource "cloudflare_record" "stackshop" {
  for_each = local.subdomains

  zone_id = var.cloudflare_zone_id
  name    = "${local.prefix}${each.value}"
  content = hcloud_server.stackshop.ipv4_address
  type    = "A"
  ttl     = 60
  proxied = false
}
