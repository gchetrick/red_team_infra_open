terraform {
  required_version = ">=0.12"
}

provider "digitalocean" {
  token = var.do-token
}

resource "random_id" "server" {
  count = var.num_inst
  byte_length = 4
}

resource "digitalocean_droplet" "http-c2" {
  count = var.num_inst
  image  = "debian-10-x64"
  name   = "http-c2-${random_id.server.*.hex[count.index]}"
  region = var.available_regions[element(var.regions, count.index)]
  size   = var.size
  ssh_keys = [
    var.ssh_fingerprint,
  ]
}
