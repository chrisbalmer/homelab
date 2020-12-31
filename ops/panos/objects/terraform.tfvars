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
  },
  {
    name    = "dns server"
    comment = "Serves DNS for the network"
  },
  {
    name    = "domain controller"
    comment = "Provides Active Directory services for the network"
  },
  {
    name    = "vcenter"
    comment = "vCenter Server"
  },
  {
    name    = "vcenter update domain"
    comment = "Domain used for updating vCenter"
  },
  {
    name    = "truenas server"
    comment = "TrueNAS/FreeNAS server"
  },
  {
    name    = "nas"
    comment = "NAS system"
  },
  {
    name    = "truenas update domain"
    comment = "Domain used for updating TrueNAS and FreeNAS"
  },
  {
    name    = "internal network"
    comment = "Items part of the internal network"
  },
  {
    name = "linux repo domain"
    comment = "Domains used for updating Linux systems"
  },
  {
    name = "linux repo server"
    comment = "Server used for updating Linux systems"
  },
  {
    name = "pihole server"
    comment = "Server used for DNS with domain block lists"
  },
  {
    name = "doh ip"
    comment = "IPs used for DNS over HTTPS"
  },
  {
    name = "doh server"
    comment = "Server used to communicate with DNS over HTTPS"
  },
  {
    name = "acme client"
    comment = "Client that reaches out to an ACME server like Let's Encrypt"
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
  },
  {
    name  = "opsad1"
    value = "172.21.7.254"
    tags  = ["domain controller", "dns server"]
  },
  {
    name  = "opsdns1"
    value = "172.21.7.253"
    tags  = [
      "dns server",
      "pihole server",
      "doh server",
      "acme client"
    ]
  },
  {
    name  = "opsdns2"
    value = "172.21.129.253"
    tags  = [
      "dns server",
      "pihole server",
      "doh server",
      "acme client"
    ]
  },
  {
    name  = "opsvcenter1"
    value = "172.21.7.50"
    tags  = ["vcenter"]
  },
  {
    name  = "vapp-updates.vmware.com"
    value = "vapp-updates.vmware.com"
    type  = "fqdn"
    tags  = ["vcenter update domain"]
  },
  {
    name  = "hostupdate.vmware.com"
    value = "hostupdate.vmware.com"
    type  = "fqdn"
    tags  = ["vcenter update domain"]
  },
  {
    name  = "opsnas1 legacy address"
    value = "172.21.14.36"
    tags  = ["nas", "truenas server"]
  },
  {
    name  = "opsnas1 management address"
    value = "172.21.7.36"
    tags  = ["nas", "truenas server"]
  },
  {
    name  = "update-master.ixsystems.com"
    value = "update-master.ixsystems.com"
    type  = "fqdn"
    tags  = ["truenas update domain"]
  },
  {
    name  = "internal network"
    value = "172.21.0.0/16"
    tags  = ["internal network"]
  },
  {
    name = "opsrepo1"
    value = "172.21.129.4"
    tags = ["linux repo server"]
  },
  {
    name = "mirror.liquidtelecom.com"
    value = "mirror.liquidtelecom.com"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "mirrors.liquidweb.com"
    value = "mirrors.liquidweb.com"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "download.docker.com"
    value = "download.docker.com"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "registry-1.docker.io"
    value = "registry-1.docker.io"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "production.cloudflare.docker.com"
    value = "production.cloudflare.docker.com"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "ubuntu.com"
    value = "ubuntu.com"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "security.ubuntu.com"
    value = "security.ubuntu.com"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "ca.archive.ubuntu.com"
    value = "ca.archive.ubuntu.com"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "changelogs.ubuntu.com"
    value = "changelogs.ubuntu.com"
    type = "fqdn"
    tags = ["linux repo domain"]
  },
  {
    name = "1.1.1.3"
    value = "1.1.1.3"
    tags = ["doh ip"]
  },
  {
    name = "1.0.0.3"
    value = "1.0.0.3"
    tags = ["doh ip"]
  },
  {
    name = "bootstrap"
    value = "172.21.7.211"
    tags = [
      "linux repo server",
      "dns server",
      "pihole server",
      "doh server",
      "acme client"
    ]
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
  },
  {
    name          = "dns servers"
    dynamic_match = "'dns server'"
  },
  {
    name          = "domain controllers"
    dynamic_match = "'domain controller'"
  },
  {
    name          = "vcenter servers"
    dynamic_match = "'vcenter'"
  },
  {
    name          = "vcenter update domains"
    dynamic_match = "'vcenter update domain'"
    description   = "Domains vCenter has to connect to in order to update"
  },
  {
    name          = "truenas servers"
    dynamic_match = "'truenas server'"
  },
  {
    name          = "nas servers"
    dynamic_match = "'nas'"
    description   = "NAS servers"
  },
  {
    name          = "truenas update domains"
    dynamic_match = "'truenas update domain'"
    description   = "Domains TrueNAS/FreeNAS has to connect to in order to update"
  },
  {
    name          = "internal network systems"
    dynamic_match = "'internal network'"
    description   = "Systems on the internal network"
  },
  {
    name = "linux repo servers"
    dynamic_match = "'linux repo server'"
    description = "Servers used to update Linux systems"
  },
  {
    name = "linux repo domains"
    dynamic_match = "'linux repo domain'"
    description = "Domains used by the Linux repo servers to pull down updates for their repos"
  },
  {
    name = "pihole servers"
    dynamic_match = "'pihole server'"
    description = "DNS servers with blocklists"
  },
  {
    name = "doh servers"
    dynamic_match = "'doh server'"
    description = "DNS servers perfroming DNS over HTTPS"
  },
  {
    name = "doh ips"
    dynamic_match = "'doh ip'"
    description = "IPs used by the doh servers to perform DNS lookups"
  },
  {
    name = "acme clients"
    dynamic_match = "'acme client'"
    description = "Clients that will connect to ACME servers to pull down certs"
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