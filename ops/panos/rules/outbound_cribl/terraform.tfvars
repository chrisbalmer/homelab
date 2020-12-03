panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "Outbound Cribl Telemetry"
    action      = "allow"
    description = "Allow Cribl outbound access for telemetry data."

    destination_zones     = ["edge"]
    destination_addresses = ["cribl sites"]
    applications = [
      "ssl"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]