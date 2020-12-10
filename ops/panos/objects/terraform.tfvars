tags = [
  {
    name    = "palo alto firewall"
    comment = "Firewalls made by Palo Alto"
  },
  {
    name    = "external syslog source"
    comment = "Systems from the outside sending syslog in"
  },
  {
    name    = "syslog server"
    comment = "Server for receiving syslog data"
  },
  {
    name    = "centos server"
    comment = "Server running the CentOS operating system"
  },
  {
    name    = "black box"
    comment = "System that runs a black box operating system (i.e. we don't control it)"
  },
  {
    name    = "service group"
    comment = "PanOS provider may have a bug requiring a tag for a service group"
  },
  {
    name    = "cribl site"
    comment = "Sites that Cribl may need to connect to"
  },
  {
    name    = "edge"
    comment = "Devices in the edge network"
  }
]

addresses = [
  {
    name  = "edge network"
    value = "172.20.20.0/24"
    tags  = ["edge"]
  },
  {
    name  = "edgefw1"
    value = "172.21.7.4"
    tags  = ["palo alto firewall", "black box"]
  },
  {
    name  = "edgerouter1"
    value = "172.20.20.253"
    tags  = ["external syslog source", "black box"]
  },
  {
    name  = "opscriblmgr1"
    value = "172.21.14.161"
    tags  = ["syslog server", "centos server"]
  },
  {
    name  = "cdn.cribl.io"
    value = "cdn.cribl.io"
    type  = "fqdn"
    tags  = ["cribl site"]
  }
]

address_groups = [
  {
    name          = "palo alto firewalls"
    dynamic_match = "'palo alto firewall'"
  },
  {
    name          = "external syslog sources"
    dynamic_match = "'external syslog source'"
  },
  {
    name          = "syslog servers"
    dynamic_match = "'syslog server'"
  },
  {
    name          = "cribl sites"
    dynamic_match = "'cribl site'"
    description   = "Sites Cribl has to connect to in order to function"
  }
]

services = [
  {
    name             = "syslog-tcp-514"
    protocol         = "tcp"
    destination_port = "514"
  },
  {
    name             = "syslog-udp-514"
    protocol         = "udp"
    destination_port = "514"
  }
]

service_groups = [
  {
    name = "syslog"
    services = [
      "syslog-tcp-514",
      "syslog-udp-514"
    ]
  }
]

panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"