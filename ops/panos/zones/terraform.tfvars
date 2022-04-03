zones = {
  "edge" = {
    interface = "ethernet1/1"
    ips       = ["172.20.20.1/24"]
    comment   = "Edge of farm network"
    name      = "edge"
  },
  "management" = {
    interface          = "ethernet1/2"
    ips                = ["172.21.7.1/24"]
    comment            = "management"
    log_setting        = "Log Everything to Splunk Lab"
    name               = "management"
    management_profile = "Default L3 Profile"
  },
  "dmz" = {
    interface = "ethernet1/3"
    ips       = ["172.20.50.1/24"]
    comment   = "dmz"
    name      = "dmz"
  },
  "guest" = {
    interface = "ethernet1/4"
    ips       = ["172.21.127.1/24"]
    comment   = "picluster"
    name      = "picluster"
  },
  "identity" = {
    interface = "ethernet1/5"
    ips       = ["172.21.128.1/24"]
    comment   = "identity"
    name      = "identity"
  },
  "servers" = {
    interface = "ethernet1/6"
    ips       = ["172.21.129.1/24"]
    comment   = "servers"
    name      = "servers"
  },
  "loadbalancers" = {
    interface = "ethernet1/7"
    ips       = ["172.21.130.1/24"]
    comment   = "loadbalancers"
    name      = "loadbalancers"
  },
  "endpoints" = {
    interface = "ethernet1/8"
    ips       = ["172.21.21.1/24"]
    comment   = "endpoints"
    name      = "endpoints"
  },
  "iot" = {
    interface = "ethernet1/9.28"
    ips       = ["172.21.28.1/24"]
    comment   = "iot"
    name      = "iot"
  }
}

panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"