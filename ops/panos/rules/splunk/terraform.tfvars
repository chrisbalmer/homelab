panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Allow management access to Splunk Web"
    action      = "allow"
    description = "Allow access to the Splunk Web UI for management."

    source_zones          = ["endpoints"]
    source_users          = ["chrisbalmer"]
    destination_addresses = ["splunk servers"]
    applications = [
      "ssl",
      "web-browsing"
    ]

    services = [
      "splunkweb-8000"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Splunk Outbound Internet"
    action      = "allow"
    description = "Allow access to the Splunk Web UI for management."

    source_zones          = ["servers"]
    source_addresses      = ["splunk servers"]
    destination_zones     = ["edge"]
    applications = [
      "ssl",
      "web-browsing",
      "apt-get"
    ]

    profile_group = "splunk"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]