vm = {
  name = "opspf1"

  domain  = "ad.balmerfamilyfarm.com"
  gateway = "172.21.128.1"
  networks = [
    {
      interface    = "ens160"
      port_group   = "vlan128-identity"
      ipv4_address = "172.21.128.11/24"
      nameservers  = "172.21.7.254"
    }
  ]

  disks = [
    {
      size          = 200
      template      = true
      eagerly_scrub = false
      thin          = true
    }
  ]
  template = "centos8-2020-06-10"

  customize                            = false
  cloud_init                           = true
  cloud_init_custom                    = false
  cloud_config_template                = "centos-cloud-config.tpl"
  metadata_template                    = "centos-metadata.tpl"
  network_config_template              = "centos-network-config.tpl"
  cloud_config_guestinfo_path          = "cloud-init.config.data"
  cloud_config_guestinfo_encoding_path = "cloud-init.data.encoding"

  cpus   = 2
  memory = 4096

}

cluster_settings = {
  datacenter = "farm"
  cluster    = "operations"
  pool       = "Resources"
}

op_subdomain         = "my"
op_vault             = "homelab"
op_vcenter_login     = "ad.balmerfamilyfarm.com - terraform-vsphere"
op_workstation_login = "ops-workstation-1"
op_vm_login          = "PacketFence Instances"