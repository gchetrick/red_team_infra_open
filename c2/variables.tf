variable "num_inst" {
  default = 1
}
variable "ssh_fingerprint" {
  default = "SSH FINGERPRINT"
}
variable "do-token" {
  default = "DO API KEY"
}
variable "size" {
  default = "s-2vcpu-2gb"
}
variable "regions" {
  type = list
  default = ["SFO3"]
}
variable "available_regions" {
  type = map
  default = {
    "NYC1" = "nyc1"
    "NYC2" = "nyc2"
    "NYC3" = "nyc3"
    "SFO1" = "sfo1"
    "SFO2" = "sfo2"
    "SFO3" = "sfo3"
  }
}
