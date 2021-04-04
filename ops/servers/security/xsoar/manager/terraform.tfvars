name        = "xsoar"
vm_count    = 1
prefix      = "ops"
op_vm_login = "XSOAR Instances"

networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.31/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]
]

vm = {
  disks = [
    {
      template = true
      size     = 200
    }
  ]
  memory   = 8192
  template = "centos7-2021-03-07"
  tags = {
    "ansible_groups": [
      "xsoar",
      "traefik",
      "linux"
    ]
  }
}
