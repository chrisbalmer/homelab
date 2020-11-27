locals {
  rules = { for rule in var.rules : rule.name => merge(var.default_rule, rule) }
}

resource "panos_security_rule_group" "rules" {
  position_keyword   = var.position_keyword
  position_reference = var.position_reference

  dynamic "rule" {
    for_each = local.rules

    content {
      name        = rule.value.name
      action      = rule.value.action
      description = rule.value.description
      tags        = rule.value.tags

      applications          = rule.value.applications
      source_zones          = rule.value.source_zones
      source_addresses      = rule.value.source_addresses
      source_users          = rule.value.source_users
      hip_profiles          = rule.value.hip_profiles
      destination_zones     = rule.value.destination_zones
      destination_addresses = rule.value.destination_addresses
      services              = rule.value.services
      categories            = rule.value.categories

      group             = rule.value.profile_group
      virus             = rule.value.profile_virus
      spyware           = rule.value.profile_spyware
      vulnerability     = rule.value.profile_vulnerability
      url_filtering     = rule.value.profile_url_filtering
      file_blocking     = rule.value.profile_file_blocking
      wildfire_analysis = rule.value.profile_wildfire_analysis
      data_filtering    = rule.value.profile_data_filtering

      log_setting = rule.value.log_setting
      log_start   = rule.value.log_start
      log_end     = rule.value.log_end
    }
  }
}
