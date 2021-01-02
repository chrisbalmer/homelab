panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Outbound Critical App Access"
    action      = "allow"
    description = "Allow all devices access to critical services on the internet."

    destination_zones = ["edge"]
    applications = [
      "ntp",
      "icmp",
      "ping",
      "whois",
      "ssh"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]