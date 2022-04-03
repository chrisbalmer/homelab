position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Outbound ACME Protocol Access"
    action      = "allow"
    description = "Allow ACME clients to pull down certificates."

    source_addresses = ["acme clients"]
    destination_zones     = ["edge"]
    applications = [
      "acme-protocol"
    ]

    profile_group = "acme"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Outbound ACME DNS Access"
    action      = "allow"
    description = "Allow ACME clients to resolve DNS challenges."

    source_addresses = ["acme clients"]
    destination_zones     = ["edge"]
    destination_addresses = ["acme dns servers"]
    applications = [
      "dns"
    ]

    profile_group = "acme"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]