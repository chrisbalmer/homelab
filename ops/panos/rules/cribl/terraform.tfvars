panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Outbound Web Access Cribl Systems"
    action      = "allow"
    description = "Allow Cribl systems outbound access for a few URLs."

    source_addresses  = ["cribl servers"]
    destination_zones = ["edge"]
    applications = [
      "ssl",
      "web-browsing"
    ]

    profile_group = "cribl"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]