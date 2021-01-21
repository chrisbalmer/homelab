name        = "dhcp"
vm_count    = 2
prefix      = "ops"
op_vm_login = "DHCP Instances"

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
}

ansible_groups = [
  [
    "dhcp"
  ]
]
ansible_host_key_check = false