panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "Outbound Linux Updates"
    action      = "allow"
    description = "Allow Linux repo servers access to repo domains."

    source_addresses = ["linux repo servers"]
    destination_zones     = ["edge"]
    destination_addresses = ["linux repo domains"]
    applications = [
      "yum",
      "ssl"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Internal Linux Updates"
    action      = "allow"
    description = "Allow Linux servers access to internal repo servers."

    source_addresses = ["internal network systems"]
    destination_zones     = ["servers"]
    destination_addresses = ["linux repo servers"]
    applications = [
      "rsync",
      "ssl",
      "yum"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]