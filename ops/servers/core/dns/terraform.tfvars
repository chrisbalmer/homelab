name        = "dns"
vm_count    = 2
prefix      = "ops"
op_vm_login = "DNS Instances"

networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan7-management"
      ipv4_address = "172.21.7.253/24"
      gateway      = "172.21.7.1"
      nameservers  = "172.21.7.254,172.21.128.254"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.253/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.7.254,172.21.128.254"
    }
  ]
]

vm = {
  disks   = [{ template = true }]
  memory  = 2048
}

ansible_groups = [
  { name = "dhcp" }
]
ansible_host_key_check = false