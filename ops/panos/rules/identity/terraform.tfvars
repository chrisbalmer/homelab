panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Active Directory Identity Access"
    action      = "allow"
    description = "Allow Active Directory access."

    source_addresses      = ["internal network systems"]
    destination_addresses = ["domain controllers"]
    applications = [
      "active-directory",
      "kerberos",       # Used by PacketFence
      "ldap",           # Used by PacketFence
      "ms-ds-smb-base", # Used by PacketFence
      "ms-ds-smbv3",    # Used by PacketFence
      "msrpc-base",     # Used by PacketFence
      "ms-netlogon",    # Used by PacketFence
      "icmp",           # Used by PacketFence
      "ping"            # Used by PacketFence
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "RADIUS Client to Server Access"
    action      = "allow"
    description = "Allow RADIUS clients to access the servers running RADIUS services."

    source_addresses      = ["radius clients"]
    destination_addresses = ["radius servers"]
    applications = [
      "radius"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "RADIUS Server to Internal Infrastructure Access"
    action      = "allow"
    description = "Allow RADIUS servers to access the infrastructure it supports."

    source_addresses = ["radius servers"]
    destination_addresses = [
      "palo alto firewalls",
      "wireless lan controllers"
    ]
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