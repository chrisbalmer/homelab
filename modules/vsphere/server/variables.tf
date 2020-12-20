variable "name" {
  type = string
}

variable "vm_count" {
  type    = number
  default = 1
}

variable "prefix" {
  type    = string
  default = "ops"
}

variable "vm" {}

variable "cluster_settings" {

  default = {
    datacenter = "farm"
    cluster    = "operations"
    pool       = "operations/Resources"
  }
}

variable "op_subdomain" {
  description = "The subdomain for your 1Password account."
  default     = "my"
}

variable "op_vault" {
  description = "Vault with the passwords for this module."
  default     = "homelab"
}

variable "op_vcenter_login" {
  description = "Login for vCenter."
  default     = "ad.balmerfamilyfarm.com - terraform-vsphere"
}

variable "op_workstation_login" {
  description = "Login for the workstation with the SSH key."
  default     = "ops-workstation-1"
}

variable "op_vm_login" {
  type        = string
  description = "The login data for the VM."
}

variable "vsphere_server" {
  type        = string
  description = "The vCenter server to use"
  default     = "vcenter.balmerfamilyfarm.com"
}

# variable "ansible_hostkey_checking" {
#   description = "Whether or not to enable strict host key checking."
#   default     = "no"
# }
