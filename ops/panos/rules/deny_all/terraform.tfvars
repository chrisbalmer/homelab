panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

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