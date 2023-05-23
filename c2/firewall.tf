terraform {
  required_version = ">=0.12"
}

data "external" "get_public_ip" {
  program = ["bash", "./scripts/get_public_ip.sh" ]
}

resource "random_id" "firewall" {
  byte_length = 4
}

resource "digitalocean_firewall" "http-c2" {
  name = "http-c2-only-allow-dns-https-ssh-${random_id.firewall.hex}"

  droplet_ids = digitalocean_droplet.http-c2.*.id

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["${data.external.get_public_ip.result["ip"]}/32"]
  }

  outbound_rule {
    protocol              = "udp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  outbound_rule {
    protocol              = "tcp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}
