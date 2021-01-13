panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "DHCP Clients"
    action      = "allow"
    description = "Allow DHCP clients to reach the DHCP servers."

    source_addresses      = ["internal network systems"]
    destination_addresses = [
      "dhcp servers",
      "packetfence servers"
    ]
    applications = [
      "dhcp"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "DHCP Ping Check"
    action      = "allow"
    description = "Allow DHCP servers to ping clients."

    source_addresses      = ["dhcp servers"]
    destination_addresses = ["internal network systems"]
    applications = [
      "ping",
      "icmp"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]