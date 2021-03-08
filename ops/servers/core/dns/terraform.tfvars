name        = "dns"
vm_count    = 2
prefix      = "ops"
op_vm_login = "DNS Instances"

networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.251/24"
      gateway      = "172.21.129.1"
      nameservers  = "127.0.0.1,172.21.129.253,172.21.7.211"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.252/24"
      gateway      = "172.21.129.1"
      nameservers  = "127.0.0.1,172.21.7.253,172.21.7.211"
    }
  ]
]

vm = {
  disks    = [{ template = true }]
  memory   = 2048
  template = "centos7-2021-03-07"
  tags = {
    "ansible_groups": [
      "linux",
      "dns",
      "pihole",
      "traefik"
    ]
  }
}

ssh_keys = [
  "~/.ssh/id_rsa.pub",
  "~/.ssh/awx.pub",
]