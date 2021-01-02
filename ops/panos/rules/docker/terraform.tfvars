panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

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
      "web-browsing"
    ]

    profile_group = "docker systems"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]