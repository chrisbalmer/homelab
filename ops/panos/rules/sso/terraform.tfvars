panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Outbound Web Access SSO Systems"
    action      = "allow"
    description = "Allow SSO systems outbound access for a few URLs."

    source_addresses  = ["sso servers"]
    destination_zones = ["edge"]
    applications = [
      "ssl",
      "web-browsing"
    ]

    profile_group = "sso"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "SSO clients access to SSO servers"
    action      = "allow"
    description = "Allow SSO clients to access SSO servers."

    source_addresses  = ["sso clients"]
    destination_addresses  = ["sso servers"]
    applications = [
      "ssl",
      "web-browsing"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]