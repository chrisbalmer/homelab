panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "log and deny all"

rules = [
    {
      name        = "Endpoint Internet Access"
      action      = "allow"
      description = "Allow endpoints outbound access to the internet"

      applications          = ["http", "ssl", "ntp"]
      source_zones          = ["endpoints"]
      destination_zones     = ["edge"]

      log_setting = "Log Everything to Splunk Lab"
      log_start   = true
      log_end     = true
    }
]