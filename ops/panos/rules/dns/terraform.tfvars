panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "Outbound Cribl Telemetry"

rules = [
  {
    name        = "Outbound DNS"
    action      = "allow"
    description = "Allow DNS outbound for DNS servers."

    source_addresses = ["dns servers"]
    destination_zones     = ["edge"]
    applications = [
      "dns"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]