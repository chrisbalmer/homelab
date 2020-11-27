panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"

position_keyword   = "before"
position_reference = "log and deny all"

rules = [
    {
        name        = "Block High Risk Applications"
        action      = "deny"
        description = "Block the high risk applications before allowing outbound internet for endpoints."

        applications          = ["high risk applications"]
        source_zones          = ["endpoints"]
        destination_zones     = ["edge"]

        log_setting = "Log Everything to Splunk Lab"
        log_start   = true
        log_end     = true
    },
    {
        name        = "Endpoint Internet Access"
        action      = "allow"
        description = "Allow endpoints outbound access to the internet"

        source_zones          = ["endpoints"]
        destination_zones     = ["edge"]
        services              = ["service-http","service-https"]

        log_setting = "Log Everything to Splunk Lab"
        log_start   = true
        log_end     = true
    }
]