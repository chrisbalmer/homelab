position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "External Git Access"
    action      = "allow"
    description = "Allow systems to access different external git platforms."

    source_addresses = ["external git clients"]
    destination_zones     = ["edge"]
    destination_addresses = ["github servers"]
    applications = [
      "ssl",
      "web-browsing",
      "github-base",
      "ssh"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]