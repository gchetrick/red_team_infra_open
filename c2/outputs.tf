output "http-c2_ips" {
  description = "IPs of all instances"
  value = digitalocean_droplet.http-c2.*.ipv4_address
}
