panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"

position_keyword   = "before"
position_reference = "log and deny all"

rules = [
  {
    name        = "Block High Risk Applications"
    action      = "deny"
    description = "Block the high risk applications before allowing outbound internet for endpoints."

    applications      = ["high risk applications"]
    source_zones      = ["endpoints"]
    destination_zones = ["edge"]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Outbound Non HTTP or HTTPS Endpoint Applications"
    action      = "allow"
    description = "Allow specific endpoint applications"

    applications = [
      "discord",
      "rtp",
      "rtcp",
      "quic",
      "zoom-meeting",
      "apple-push-notifications",
      "stun",
      "facetime"
    ]
    source_zones      = ["endpoints"]
    destination_zones = ["edge"]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Endpoint Internet Access"
    action      = "allow"
    description = "Allow endpoints outbound access to the internet"

    source_zones      = ["endpoints"]
    destination_zones = ["edge"]
    services          = ["service-http", "service-https"]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]