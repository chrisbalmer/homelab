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

variable "position_keyword" {
  description = "A positioning keyword for this group. This can be before, directly before, after, directly after, top, bottom, or left empty (the default) to have no particular placement. This param works in combination with the position_reference param."
  type        = string
  default     = "before"
}

variable "position_reference" {
  description = "Required if position_keyword is one of the `above` or `below` variants, this is the name of a non-group rule to use as a reference to place this group."
  type        = string
  default     = null
}

variable "rules" {}
