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

variable "name" {
  type = string
}
variable "port_groups" {}
variable "datacenter" {
  type = string
}
variable "hosts" {
  type = list(object(
    {
      name    = string
      devices = list(string)
    }
  ))
}

variable "nioc" {
  type    = bool
  default = true
}

variable "ldo" {
  type    = string
  default = "both"
}

variable "ds_version" {
  type    = string
}
