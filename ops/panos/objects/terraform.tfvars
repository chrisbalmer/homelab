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
    name    = "cribl server"
    comment = "Servers running Cribl"
  },
  {
    name    = "cribl manager"
    comment = "Server acting as Cribl manager"
  },
  {
    name    = "cribl worker"
    comment = "Server acting as a Cribl worker"
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
    name    = "dmz network"
    comment = "Items part of the dmz network"
  },
  {
    name    = "linux repo domain"
    comment = "Domains used for updating Linux systems"
  },
  {
    name    = "linux repo server"
    comment = "Server used for updating Linux systems"
  },
  {
    name    = "pihole server"
    comment = "Server used for DNS with domain block lists"
  },
  {
    name    = "doh ip"
    comment = "IPs used for DNS over HTTPS"
  },
  {
    name    = "doh server"
    comment = "Server used to communicate with DNS over HTTPS"
  },
  {
    name    = "acme client"
    comment = "Client that reaches out to an ACME server like Let's Encrypt"
  },
  {
    name    = "docker registry"
    comment = "Server that provides docker images"
  },
  {
    name    = "docker system"
    comment = "System running docker containers"
  },
  {
    name    = "acme dns server"
    comment = "External DNS server used to solve ACME DNS challenges"
  },
  {
    name    = "packetfence server"
    comment = "Server running PacketFence software"
  },
  {
    name    = "radius server"
    comment = "Server running RADIUS software"
  },
  {
    name    = "radius client"
    comment = "Client consuming a RADIUS service"
  },
  {
    name    = "wireless lan controller"
    comment = "Controller for the wireless networks"
  },
  {
    name    = "dhcp server"
    comment = "DHCP server for the network"
  },
  {
    name    = "awx server"
    comment = "Server running AWX for managing systems with Ansible"
  },
  {
    name    = "sso server"
    comment = "Single Sign On Server"
  },
  {
    name    = "sso client"
    comment = "Client of an SSO server"
  },
  {
    name    = "splunk server"
    comment = "Server running Splunk"
  },
  {
    name    = "splunk indexer"
    comment = "Server running Splunk as an indexer"
  },
  {
    name    = "splunk search head"
    comment = "Server running Splunk as a search head"
  },
  {
    name    = "nfs client"
    comment = "System accessing NFS servers"
  },
  {
    name    = "xsoar server"
    comment = "XSOAR automation server"
  },
  {
    name    = "gitea server"
    comment = "Gitea server"
  },
  {
    name    = "github api"
    comment = "API for GitHub"
  },
  {
    name    = "office 365 client"
    comment = "Client for Office 365"
  },
  {
    name    = "wiki"
    comment = "One of the wiki servers"
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
    value = "172.21.129.14"
    tags  = [
      "acme client",
      "cribl server",
      "cribl manager"
    ]
  },
  {
    name  = "opscriblwkr1"
    value = "172.21.129.15"
    tags  = [
      "syslog server",
      "cribl server",
      "cribl worker"
    ]
  },
  {
    name  = "opscriblwkr2"
    value = "172.21.129.16"
    tags  = [
      "syslog server",
      "cribl server",
      "cribl worker"
    ]
  },
  {
    name  = "opscriblwkr3"
    value = "172.21.129.17"
    tags  = [
      "syslog server",
      "cribl server",
      "cribl worker"
    ]
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
    value = "172.21.129.251"
    tags = [
      "dns server",
      "pihole server",
      "doh server",
      "acme client"
    ]
  },
  {
    name  = "opsdns2"
    value = "172.21.129.252"
    tags = [
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
    name  = "opsnas1"
    value = "172.21.129.36"
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
    name  = "dmz network"
    value = "172.20.50.0/24"
    tags  = ["dmz network"]
  },
  {
    name  = "opsrepo1"
    value = "172.21.129.4"
    tags  = ["linux repo server"]
  },
  {
    name  = "mirror.liquidtelecom.com"
    value = "mirror.liquidtelecom.com"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "mirrors.liquidweb.com"
    value = "mirrors.liquidweb.com"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "download.docker.com"
    value = "download.docker.com"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "registry-1.docker.io"
    value = "registry-1.docker.io"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "production.cloudflare.docker.com"
    value = "production.cloudflare.docker.com"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "quay.io"
    value = "quay.io"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "ubuntu.com"
    value = "ubuntu.com"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "security.ubuntu.com"
    value = "security.ubuntu.com"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "ca.archive.ubuntu.com"
    value = "ca.archive.ubuntu.com"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "changelogs.ubuntu.com"
    value = "changelogs.ubuntu.com"
    type  = "fqdn"
    tags  = ["linux repo domain"]
  },
  {
    name  = "1.1.1.3"
    value = "1.1.1.3"
    tags = [
      "doh ip",
      "acme dns server"
    ]
  },
  {
    name  = "1.0.0.3"
    value = "1.0.0.3"
    tags = [
      "doh ip",
      "acme dns server"
    ]
  },
  {
    name  = "ns1.digitalocean.com"
    value = "ns1.digitalocean.com"
    type  = "fqdn"
    tags  = ["acme dns server"]
  },
  {
    name  = "ns2.digitalocean.com"
    value = "ns2.digitalocean.com"
    type  = "fqdn"
    tags  = ["acme dns server"]
  },
  {
    name  = "ns3.digitalocean.com"
    value = "ns3.digitalocean.com"
    type  = "fqdn"
    tags  = ["acme dns server"]
  },
  {
    name  = "api.github.com"
    value = "api.github.com"
    type  = "fqdn"
    tags  = ["github api"]
  },
  {
    name  = "bootstrap"
    value = "172.21.7.211"
    tags = [
      "linux repo server",
      "dns server",
      "pihole server",
      "doh server",
      "acme client",
      "docker registry"
    ]
  },
  {
    name  = "opssso1"
    value = "172.21.128.12"
    tags = [
      "acme client",
      "sso server",
      "nfs client"
    ]
  },
  {
    name  = "opsdocker1"
    value = "172.21.129.12"
    tags = [
      "docker system",
      "acme client",
      "gitea server",
      "wiki"
    ]
  },
  {
    name  = "opsdocker1-endpoint"
    value = "172.21.21.12"
    tags = [
      "docker system",
      "gitea server",
      "wiki"
    ]
  },
  {
    name  = "opsdocker2"
    value = "172.21.129.13"
    tags = [
      "docker system",
      "acme client"
    ]
  },
  {
    name  = "opspf1"
    value = "172.21.128.11"
    tags = [
      "packetfence server",
      "radius server"
    ]
  },
  {
    name  = "opswlc2"
    value = "172.21.8.3"
    tags = [
      "radius client",
      "wireless lan controller"
    ]
  },
  {
    name  = "opsdhcp1"
    value = "172.21.129.2"
    tags = [
      "dhcp server"
    ]
  },
  {
    name  = "opsdhcp2"
    value = "172.21.129.3"
    tags = [
      "dhcp server"
    ]
  },
  {
    name  = "opsawx1"
    value = "172.21.129.11"
    tags = [
      "acme client",
      "awx server"
    ]
  },
  {
    name  = "opssplunklm1"
    value = "172.21.129.21"
    tags = [
      "splunk server"
    ]
  },
  {
    name  = "opssplunkcm1"
    value = "172.21.129.22"
    tags = [
      "splunk server"
    ]
  },
  {
    name  = "opssplunkdep1"
    value = "172.21.129.23"
    tags = [
      "splunk server"
    ]
  },
  {
    name  = "opssplunkds1"
    value = "172.21.129.24"
    tags = [
      "splunk server"
    ]
  },
  {
    name  = "opssplunkidx1"
    value = "172.21.129.25"
    tags = [
      "splunk indexer",
      "splunk server"
    ]
  },
  {
    name  = "opssplunkidx2"
    value = "172.21.129.26"
    tags = [
      "splunk indexer",
      "splunk server"
    ]
  },
  {
    name  = "opssplunkidx3"
    value = "172.21.129.27"
    tags = [
      "splunk indexer",
      "splunk server"
    ]
  },
  {
    name  = "opssplunksh1"
    value = "172.21.129.28"
    tags = [
      "splunk search head",
      "splunk server"
    ]
  },
  {
    name  = "opssplunksh2"
    value = "172.21.129.29"
    tags = [
      "splunk search head",
      "splunk server"
    ]
  },
  {
    name  = "opssplunksh3"
    value = "172.21.129.30"
    tags = [
      "splunk search head",
      "splunk server"
    ]
  },
  {
    name  = "opsxsoar1"
    value = "172.21.129.31"
    tags = [
      "acme client",
      "xsoar server",
      "sso client",
      "office 365 client"
    ]
  },
  {
    name  = "opsxsoareng1"
    value = "172.21.129.32"
    tags = [
      "xsoar server",
      "office 365 client"
    ]
  },
  {
    name  = "opsxsoareng2"
    value = "172.21.129.33"
    tags = [
      "xsoar server",
      "office 365 client"
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
    name          = "dmz systems"
    dynamic_match = "'dmz network'"
    description   = "Systems on the dmz network"
  },
  {
    name          = "linux repo servers"
    dynamic_match = "'linux repo server'"
    description   = "Servers used to update Linux systems"
  },
  {
    name          = "linux repo domains"
    dynamic_match = "'linux repo domain'"
    description   = "Domains used by the Linux repo servers to pull down updates for their repos"
  },
  {
    name          = "pihole servers"
    dynamic_match = "'pihole server'"
    description   = "DNS servers with blocklists"
  },
  {
    name          = "doh servers"
    dynamic_match = "'doh server'"
    description   = "DNS servers perfroming DNS over HTTPS"
  },
  {
    name          = "doh ips"
    dynamic_match = "'doh ip'"
    description   = "IPs used by the doh servers to perform DNS lookups"
  },
  {
    name          = "acme clients"
    dynamic_match = "'acme client'"
    description   = "Clients that will connect to ACME servers to pull down certs"
  },
  {
    name          = "docker registries"
    dynamic_match = "'docker registry'"
    description   = "Servers that provide docker images"
  },
  {
    name          = "docker systems"
    dynamic_match = "'docker system'"
    description   = "Systems that run docker containers"
  },
  {
    name          = "acme dns servers"
    dynamic_match = "'acme dns server'"
    description   = "External DNS servers used to solve ACME DNS challenges"
  },
  {
    name          = "github servers"
    dynamic_match = "'github api'"
    description   = "GitHub servers"
  },
  {
    name          = "packetfence servers"
    dynamic_match = "'packetfence server'"
    description   = "Servers running the PacketFence software"
  },
  {
    name          = "radius servers"
    dynamic_match = "'radius server'"
    description   = "Servers running the RADIUS software"
  },
  {
    name          = "radius clients"
    dynamic_match = "'radius client'"
    description   = "Clients consuming a RADIUS service"
  },
  {
    name          = "wireless lan controllers"
    dynamic_match = "'wireless lan controller'"
    description   = "Controllers managing the wireless networks"
  },
  {
    name          = "dhcp servers"
    dynamic_match = "'dhcp server'"
    description   = "DHCP servers for the network"
  },
  {
    name          = "awx servers"
    dynamic_match = "'awx server'"
    description   = "AWX servers for the network"
  },
  {
    name          = "sso servers"
    dynamic_match = "'sso server'"
    description   = "SSO servers for the network"
  },
  {
    name          = "sso clients"
    dynamic_match = "'sso client'"
    description   = "SSO clients"
  },
  {
    name          = "splunk servers"
    dynamic_match = "'splunk server'"
    description   = "Splunk serverss"
  },
  {
    name          = "splunk indexers"
    dynamic_match = "'splunk indexer'"
    description   = "Splunk indexers"
  },
  {
    name          = "splunk search heads"
    dynamic_match = "'splunk search head'"
    description   = "Splunk search heads"
  },
  {
    name          = "nfs clients"
    dynamic_match = "'nfs client'"
    description   = "Clients mounting NFS shares"
  },
  {
    name          = "xsoar servers"
    dynamic_match = "'xsoar server'"
    description   = "XSOAR automation systems"
  },
  {
    name          = "cribl servers"
    dynamic_match = "'cribl server'"
    description   = "Cribl systems"
  },
  {
    name          = "cribl managers"
    dynamic_match = "'cribl manager'"
    description   = "Cribl manager systems"
  },
  {
    name          = "cribl workers"
    dynamic_match = "'cribl worker'"
    description   = "Cribl worker systems"
  },
  {
    name          = "gitea servers"
    dynamic_match = "'gitea server'"
    description   = "Gitea servers"
  },
  {
    name          = "office 365 clients"
    dynamic_match = "'office 365 client'"
    description   = "Clients of Office 365"
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
  },
  {
    name             = "docker-registry-tcp-5000"
    protocol         = "tcp"
    destination_port = "5000"
  },
  {
    name             = "minio-9000"
    protocol         = "tcp"
    destination_port = "9000"
  },
  {
    name             = "splunkweb-8000"
    protocol         = "tcp"
    destination_port = "8000"
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

panos_host      = "firewall.balmerfamilyfarm.com"
op_subdomain    = "my"
op_vault        = "homelab"
op_edgefw_login = "firewall.balmerfamilyfarm.com - terraform"