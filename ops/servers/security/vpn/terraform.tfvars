name        = "vpn"
vm_count    = 1
prefix      = "ops"
op_vm_login = "VPN Instances"

vm = {
  gateway = "172.20.50.1"
  networks = [
    {
      interface    = "ens160"
      port_group   = "vlan2050-dmz"
      ipv4_address = "172.20.50.11/24"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]

  disks = [
    {
      size          = 20
      template      = true
    }
  ]

  memory = 2048
  template = "centos7-2021-07-08"
  tags = {
    "ansible_groups": [
      "vpn",
      "linux"
    ]
  }
}
