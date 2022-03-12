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
      "service-now-base",
      "shodan"
    ]

    profile_group = "xsoar"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "PANW Autofocus Access for XSOAR Systems"
    action      = "allow"
    description = "Allow XSOAR systems access to PANW Autofocus."

    source_addresses  = ["xsoar servers"]
    destination_addresses  = ["panw autofocus servers"]
    destination_zones = ["edge"]
    applications = [
      "paloalto-autofocus"
    ]

    profile_group = "xsoar"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "XSOAR access to OctoPrint servers"
    action      = "allow"
    description = "Allow XSOAR systems access to OctoPrint."

    source_addresses  = ["xsoar servers"]
    destination_addresses  = ["octoprint servers"]
    destination_zones = ["endpoints"]
    applications = [
      "web-browsing",
      "ssl"
    ]

    profile_group = "xsoar"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]