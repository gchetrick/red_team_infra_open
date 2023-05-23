output "redirector_ips" {
  description = "IPs of deployed Redirectors"
  value = module.redirectors.redirector_ips
}
output "http-c2_ips" {
  description = "IPs of the deployed C2 servers"
  value = module.c2.http-c2_ips
}
output "redelk_ips" {
  description = "IP of the deployed redelk servers"
  value = module.redelk.redelk_ips
}
