panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "Outbound TrueNAS Updates"
    action      = "allow"
    description = "Allow vCenter access to update sites."

    source_addresses = ["truenas servers"]
    destination_zones     = ["edge"]
    destination_addresses = ["truenas update domains"]
    applications = [
      "ssl"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]