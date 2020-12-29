panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "Endpoint Internal Access - Ping"
    action      = "allow"
    description = "Allow endpoints to ping internal systems."

    source_zones = ["endpoints"]
    destination_zones = [
      "dmz",
      "guest",
      "identity",
      "loadbalancers",
      "management",
      "servers"
    ]
    applications = [
      "icmp",
      "ping"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Endpoint Internal Access - SSH"
    action      = "allow"
    description = "Allow endpoints to SSH to internal systems."

    source_zones = ["endpoints"]
    destination_zones = [
      "dmz",
      "guest",
      "identity",
      "loadbalancers",
      "management",
      "servers"
    ]
    applications = [
      "ssh"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]