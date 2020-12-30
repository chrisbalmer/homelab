panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "Internal DNS"
    action      = "allow"
    description = "Allow internal systems access to the DNS servers."

    source_addresses = ["internal network systems"]
    destination_addresses = ["dns servers"]
    applications = [
      "dns"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Outbound DNS"
    action      = "allow"
    description = "Allow DNS outbound for DNS servers."

    source_addresses = ["dns servers"]
    destination_zones     = ["edge"]
    applications = [
      "dns"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Outbound DOH"
    action      = "allow"
    description = "Allow DOH outbound for DNS over HTTPs servers."

    source_addresses = ["doh servers"]
    destination_zones     = ["edge"]
    destination_addresses = ["doh ips"]
    applications = [
      "dns-over-https",
      "ssl"
    ]

    profile_group = "balmer family farm default"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Outbound PiHole Web Access"
    action      = "allow"
    description = "Allow PiHole servers to pull down blocklists."

    source_addresses = ["pihole servers"]
    destination_zones     = ["edge"]
    applications = [
      "ssl",
      "web-browsing"
    ]

    profile_group = "pihole"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]