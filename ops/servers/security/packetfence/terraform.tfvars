name        = "pf"
vm_count    = 1
prefix      = "ops"
op_vm_login = "PacketFence Instances"

vm = {
  gateway = "172.21.128.1"
  networks = [
    {
      interface    = "ens160"
      port_group   = "vlan128-identity"
      ipv4_address = "172.21.128.11/24"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]

  disks = [
    {
      size          = 200
      template      = true
    }
  ]

  memory = 12288
}

ansible_groups = [
  [
    "pf"
  ]
]
ansible_host_key_check = false
