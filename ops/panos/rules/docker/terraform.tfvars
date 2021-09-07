panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Outbound Web Access for Docker Systems"
    action      = "allow"
    description = "Allow docker systems outbound access for a few URLs."

    source_addresses = ["docker systems"]
    destination_zones     = ["edge"]
    applications = [
      "ssl",
      "web-browsing",
      "github-base"
    ]

    profile_group = "docker systems"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Inbound Access for Docker Systems"
    action      = "allow"
    description = "Allow endpoints access to docker systems over http and https."

    source_zones = [
      "endpoints",
      "globalprotect"
    ]
    destination_addresses     = ["docker systems"]
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
