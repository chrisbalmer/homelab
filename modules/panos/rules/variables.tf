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

variable "default_rule" {
  type = object(
    {
      name        = string
      action      = string
      description = string
      tags        = list(string)

      applications          = list(string)
      source_zones          = list(string)
      source_addresses      = list(string)
      source_users          = list(string)
      hip_profiles          = list(string)
      destination_zones     = list(string)
      destination_addresses = list(string)
      services              = list(string)
      categories            = list(string)

      profile_group             = string
      profile_virus             = string
      profile_spyware           = string
      profile_vulnerability     = string
      profile_url_filtering     = string
      profile_file_blocking     = string
      profile_wildfire_analysis = string
      profile_data_filtering    = string

      log_setting = string
      log_start   = bool
      log_end     = bool
    }
  )

  default = {
    name        = "default"
    action      = "deny"
    description = ""
    tags        = []

    applications          = ["any"]
    source_zones          = ["any"]
    source_addresses      = ["any"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    destination_zones     = ["any"]
    destination_addresses = ["any"]
    services              = ["application-default"]
    categories            = ["any"]

    profile_group             = null
    profile_virus             = null
    profile_spyware           = null
    profile_vulnerability     = null
    profile_url_filtering     = null
    profile_file_blocking     = null
    profile_wildfire_analysis = null
    profile_data_filtering    = null

    log_setting = null
    log_start   = null
    log_end     = null
  }
}

