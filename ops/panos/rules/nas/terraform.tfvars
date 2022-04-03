position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "NFS access for NFS clients"
    action      = "allow"
    description = "Allow NFS clients to mount NFS shares."

    source_addresses  = ["nfs clients"]
    destination_addresses = ["nas servers"]
    applications = [
      "nfs",
      "mount",
      "portmapper"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]