tags = [
  {
    name    = "palo alto firewall"
    comment = "Firewalls made by Palo Alto"
  }
]

addresses = [
  {
    name  = "edgefw1"
    value = "172.21.7.4"
    tags  = ["palo alto firewall"]
  }
]

panos_host      = "edge-firewall-1.farm.oakops.io"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "edge-firewall-1-terraform"