name        = "zeekmgr"
vm_count    = 1
prefix      = "ops"
op_vm_login = "Zeek Instances"

networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.37/24"
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
  memory   = 4096
  template = "centos7-2021-07-08"
  tags = {
    "ansible_groups": [
      "zeek",
      "zeek_manager",
      "linux"
    ]
  }
}
