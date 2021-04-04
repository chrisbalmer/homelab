name        = "sso"
vm_count    = 1
prefix      = "ops"
op_vm_login = "SSO Instances"

networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan128-identity"
      ipv4_address = "172.21.128.12/24"
      gateway      = "172.21.128.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]
]

vm = {
  disks    = [{ template = true }]
  memory   = 4096
  template = "centos7-2021-03-07"
  tags = {
    "ansible_groups": [
      "sso",
      "traefik",
      "linux"
    ]
  }
}
