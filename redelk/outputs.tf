output "redelk_ips" {
  description = "IPs of all instances"
  value = digitalocean_droplet.redelk.*.ipv4_address
}
