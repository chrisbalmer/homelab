name        = "criblmgr"
vm_count    = 1
prefix      = "ops"
op_vm_login = "Cribl Instances"
op_vcenter_login = "vcenter.balmerfamilyfarm.com - sso"
networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.14/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]
]

vm = {
  gateway  = "172.21.129.1"
  disks    = [{ template = true }]
  memory   = 4096
  template = "centos7-2021-08-28"
  tags = {
    "ansible_groups": [
      "linux",
      "cribl",
      "cribl_manager",
      "traefik"
    ]
  }
}
