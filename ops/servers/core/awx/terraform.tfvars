name        = "awx"
vm_count    = 1
prefix      = "ops"
op_vm_login = "AWX Instances"

vm = {
  gateway = "172.21.129.1"
  networks = [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.11/24"
      nameservers  = "172.21.7.254,172.21.128.254"
    }
  ]

  disks = [
    {
      size          = 100
      template      = true
    }
  ]
}
