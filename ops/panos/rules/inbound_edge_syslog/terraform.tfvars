panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "Inbound Edge Syslog"
    action      = "allow"
    description = "Allow syslog traffic from devices on the edge network."

    source_zones = ["edge"]
    source_addresses = ["edge-network"]
    destination_zones = ["virtual-edge"]
    applications = [
      "syslog"
    ]
    services = ["syslog"]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]