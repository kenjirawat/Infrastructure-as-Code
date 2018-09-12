variable "project-id" {
  default       = "*YOUR_PROJECT_ID"
}
variable "instance-name" {
  default       = "infra-ac-1"
}
variable "region" {
  description   = "region"
  default       = "asia-southeast1"
}
variable "zone" {
  description   = "zone"
  default       = "asia-southeast1-a"
}
variable "network-name" {
  description   = "name network"
  default       = "iac-custom-network"
}
variable "ip-interface" {
  description   = "ip rank"
  default       = "192.168.1.0/24"
}
variable "machine-type" {
  description   = "spec machine"
  default       = "n1-standard-1"
}
variable "image" {
  description   = "image for boot"
  default       = "packer-test"
}
variable "firewall-name" {
  default       = "aic-firewall-allow"
}
variable "protocol" {
  default       = "tcp"
}
variable "port" {
  default       = ["80", "443", "22"]
}
variable "tags" {
  default       = ["foo"]
}
variable "source_ranges" {
  default       = ["0.0.0.0/0"]
}