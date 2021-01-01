panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Outbound ACME Access"
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
  }
]