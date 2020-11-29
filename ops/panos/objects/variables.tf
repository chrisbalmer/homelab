variable "panos_host" {
  description = "PANOS Hostname"
  type        = string
}

variable "op_subdomain" {
  description = "The subdomain for your 1Password account."
}

variable "op_vault" {
  description = "Vault with the passwords for this module."
}

variable "op_edgefw_login" {
  description = "Login for PanOS."
}

variable "tags" {}

variable "addresses" {}

variable "address_groups" {}
