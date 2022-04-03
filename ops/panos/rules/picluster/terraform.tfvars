position_keyword   = "before"
position_reference = "Outbound Critical App Access"

rules = [
  {
    name        = "Pi Cluster TFTP Access to NAS"
    action      = "allow"
    description = "Allow pi cluster nodes to access boot files over TFTP on the NAS."

    source_zones  = ["picluster"]
    destination_zones = ["servers"]
    applications = [
      "tftp"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]