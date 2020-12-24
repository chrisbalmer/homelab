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
      nameservers  = "172.21.7.254,172.21.128.254"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.3/24"
      nameservers  = "172.21.7.254,172.21.128.254"
    }
  ]
]

vm = {
  gateway = "172.21.129.1"
  disks   = [{ template = true }]
}

ansible_groups = [
  { name = "dhcp" }
]
ansible_host_key_check = false