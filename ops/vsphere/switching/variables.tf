variable "vcenter_host" {
  type = string
}

variable "op_subdomain" {
  type = string
}

variable "op_vault" {
  type = string
}

variable "op_vcenter_login" {
  type = string
}

variable "distributed_switches" {}
variable "port_groups" {}
variable "datacenter" {
  type = string
}
variable "hosts" {
  type = list(string)
}
