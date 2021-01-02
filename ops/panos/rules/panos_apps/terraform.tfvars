panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "PANOS App Access"
    action      = "allow"
    description = "Allow PANOS devices access to required apps like updates and wildfire."

    source_addresses  = ["palo alto firewalls"]
    destination_zones = ["edge"]
    applications = [
      "paloalto-dns-security",
      "paloalto-updates",
      "paloalto-wildfire-cloud",
      "pan-db-cloud"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]