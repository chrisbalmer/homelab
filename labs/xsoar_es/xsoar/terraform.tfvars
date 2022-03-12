name             = "xsoar"
vm_count         = 1
op_vm_login      = "XSOAR Instances"
op_vcenter_login = "vcenter.balmerfamilyfarm.com - sso"
networks = [
  [
    {
      interface    = "ens192"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.34/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]
]

vm = {
  disks = [
    {
      template = true
      size     = 100
    }
  ]
  memory            = 8192
  userdata_template = "ubuntu-userdata.tpl"
  metadata_template = "ubuntu-metadata.tpl"
  template          = "ubuntu-20.04-2022-03-11"
  tags = {
    "ansible_groups" : [
      "xsoar",
      "traefik",
      "linux",
      "lab"
    ]
  }
}
