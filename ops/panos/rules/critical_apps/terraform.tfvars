panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
    {
        name        = "Outbound Critical App Access"
        action      = "allow"
        description = "Allow all devices access to critical services on the internet."

        destination_zones = ["edge"]
        applications      = [
            "ntp",
            "icmp",
            "whois",
            "apple-push-notifications",
            "ssh"
        ]

        profile_group = "balmer family farm default"

        log_setting = "Log Everything to Splunk Lab"
        log_start   = true
        log_end     = true
    }
]