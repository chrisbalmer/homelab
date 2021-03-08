name        = "awx"
vm_count    = 1
prefix      = "ops"
op_vm_login = "AWX Instances"

vm = {
  template = "centos7-2021-03-07"
  gateway = "172.21.129.1"
  networks = [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.11/24"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]

  disks = [
    {
      size          = 100
      template      = true
    }
  ]
}

ansible_groups = [
  [
    "awx",
    "traefik"
  ]
]
ansible_host_key_check = false