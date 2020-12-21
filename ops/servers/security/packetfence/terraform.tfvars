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
      nameservers  = "172.21.7.254,172.21.128.254"
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
