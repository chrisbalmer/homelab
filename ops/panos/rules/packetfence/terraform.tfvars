panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Outbound PacketFence Internet"
    action      = "allow"
    description = "Allow packetfence to connect to specific URLs."

    source_addresses = ["packetfence servers"]
    destination_zones     = ["edge"]
    applications = [
      "github-base",
      "web-browsing",
      "ssl",
      "yum"
    ]

    profile_group = "packetfence"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]