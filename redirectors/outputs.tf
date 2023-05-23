output "redirector_ips" {
  description = "IPs of all instances"
  value = aws_instance.http-rdir.*.public_ip
}
