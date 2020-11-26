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

# variable "deny_everything_rule_name" {
#   description = "Name of the final deny rule."
#   type        = "string"
#   default     = "deny everything else"
# }

# variable "deny_all" {
#   type = map(
#     object({
#       name        = string
#       log_setting = string
#       log_start   = bool
#       log_end     = bool
#     })
#   )
# }
