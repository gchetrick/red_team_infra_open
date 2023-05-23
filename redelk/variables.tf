variable "num_inst" {
  default = 1
}
variable "ssh_fingerprint" {
  default = "FINGERPRINT"
}
variable "do-token" {
  default = "DO TOKEN"
}
variable "size" {
  default = "s-8vcpu-16gb"
}
variable "regions" {
  type = list
  default = ["NYC3"]
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
