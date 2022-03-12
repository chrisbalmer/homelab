name        = "dhcp"
vm_count    = 2
prefix      = "ops"
op_vm_login = "DHCP Instances"
op_vcenter_login = "vcenter.balmerfamilyfarm.com - sso"
networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.2/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.3/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]
]

vm = {
  gateway = "172.21.129.1"
  disks   = [{ template = true }]
  memory  = 2048
  template = "centos7-2021-03-07"
  tags = {
    "ansible_groups": [
      "linux",
      "dhcp"
    ]
  }
}
