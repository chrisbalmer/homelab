panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Outbound Web Access XSOAR Systems"
    action      = "allow"
    description = "Allow XSOAR systems outbound access for a few URLs."

    source_addresses  = ["xsoar servers"]
    destination_zones = ["edge"]
    applications = [
      "ssl",
      "web-browsing",
      "virustotal-base",
      "github-base",
      "paloalto-wildfire-cloud",
      "google-base",
      "shodan"
    ]

    profile_group = "xsoar"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]