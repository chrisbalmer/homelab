position_keyword   = "before"
position_reference = "Outbound Critical App Access"
# TODO: Reduce this access for both rules
rules = [
  {
    name        = "Endpoint Internal Access - Ping"
    action      = "allow"
    description = "Allow endpoints to ping internal systems."

    source_zones = [
      "endpoints",
      "globalprotect"
    ]
    destination_zones = [
      "dmz",
      "picluster",
      "identity",
      "loadbalancers",
      "management",
      "servers"
    ]
    applications = [
      "icmp",
      "ping"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Endpoint Internal Access - SSH"
    action      = "allow"
    description = "Allow endpoints to SSH to internal systems."

    source_zones = [
      "endpoints",
      "globalprotect"
    ]
    destination_zones = [
      "dmz",
      "picluster",
      "identity",
      "loadbalancers",
      "management",
      "servers"
    ]
    applications = [
      "ssh"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]