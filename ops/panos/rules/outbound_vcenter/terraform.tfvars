position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "Outbound vCenter Updates"
    action      = "allow"
    description = "Allow vCenter access to update sites."

    source_addresses = ["vcenter servers"]
    destination_zones     = ["edge"]
    destination_addresses = ["vcenter update domains"]
    applications = [
      "ssl"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]