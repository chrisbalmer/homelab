categories = {
  "ansible_groups" = {
    description = "Group mapping for use with AWX and Ansible"
    cardinality = "MULTIPLE"
    tags = [
      "splunk",
      "full",
      "uf",
      "wikijs",
      "dhcp",
      "clustermaster",
      "jira",
      "indexer",
      "licensemaster",
      "linux",
      "confluence",
      "shdeployer",
      "deploymentserver",
      "docker",
      "search",
      "gitea",
      "dns",
      "pihole",
      "plex",
      "cribl",
      "packetfence",
      "xsoar",
      "windows",
      "wlc",
      "traefik",
      "netbox",
      "codeserver",
      "wireshark",
      "ffmpeg",
      "nextcloud",
      "sso",
      "xsoar_engine"
    ]
    types = [
      "VirtualMachine"
    ]
  }
}

vcenter_host     = "vcenter.balmerfamilyfarm.com"
op_subdomain     = "my"
op_vault         = "homelab"
op_vcenter_login = "vcenter.balmerfamilyfarm.com - sso"