position_keyword   = "before"
position_reference = "Block High Risk Applications"

rules = [
  {
    name        = "AWX Access to vCenter"
    action      = "allow"
    description = "Allow awx systems to access vCenter for inventory."

    source_addresses      = ["awx servers"]
    destination_addresses = ["vcenter servers"]
    applications = [
      "ssl",
      "web-browsing"
    ]

    profile_group = "awx"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "Outbound Web Access AWX Systems"
    action      = "allow"
    description = "Allow awx systems outbound access for a few URLs."

    source_addresses  = ["awx servers"]
    destination_zones = ["edge"]
    applications = [
      "ssl",
      "web-browsing",
      "github-base"
    ]

    profile_group = "awx"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  },
  {
    name        = "AWX Remote Access to Servers"
    action      = "allow"
    description = "Allow AWX systems to access other servers via SSH and WinRM."

    source_addresses      = ["awx servers"]
    destination_addresses = [
      "internal network systems",
      "dmz systems"
    ]
    applications = [
      "ssh",
      "windows-remote-management"
    ]

    profile_group = "awx"

    log_setting = "Log Everything to Splunk Lab"
    log_start   = true
    log_end     = true
  }
]