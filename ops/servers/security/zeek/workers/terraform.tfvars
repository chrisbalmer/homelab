name        = "zeekwrk"
vm_count    = 3
prefix      = "ops"
op_vm_login = "Zeek Instances"

networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.38/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    },
    {
      interface    = "ens192"
      port_group   = "trunk-zeek"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.39/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    },
    {
      interface    = "ens192"
      port_group   = "trunk-zeek"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.40/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    },
    {
      interface    = "ens192"
      port_group   = "trunk-zeek"
    }
  ]
]

vm = {
  disks = [{ template = true }]
  memory   = 2048
  template = "centos7-2021-03-07"
  tags = {
    "ansible_groups": [
      "zeek",
      "zeek_worker",
      "linux"
    ]
  }
}
