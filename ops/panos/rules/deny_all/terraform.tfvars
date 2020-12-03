panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword = "bottom"

rules = [
  {
    name        = "log and deny all"
    services    = ["any"]
    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]