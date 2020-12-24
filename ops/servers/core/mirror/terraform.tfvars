name        = "mirror"
vm_count    = 1
prefix      = "ops"
op_vm_login = "Mirror Instances"

vm = {
  gateway = "172.21.129.1"
  networks = [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.4/24"
      nameservers  = "172.21.7.254,172.21.128.254"
    }
  ]

  disks = [
    {
      size          = 200
      template      = true
    }
  ]
}

ansible_groups = [
  { name = "mirrors" }
]