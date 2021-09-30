panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Office 365 Access"
    action      = "allow"
    description = "Allow specific systems to access Microsoft Office 365 Resources."

    source_addresses  = ["office 365 clients"]
    destination_zones = ["edge"]
    applications = [
      "outlook-web-online",
      "ms-office365-base",
      "windows-defender-atp-portal"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]