name        = "docker"
vm_count    = 2
prefix      = "ops"
op_vm_login = "Docker Instances"
op_vcenter_login = "vcenter.balmerfamilyfarm.com - sso"
networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.12/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.13/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]
]

tags = [
  {
    "ansible_groups": [
      "linux",
      "docker",
      "gitea",
      "wikijs",
      "traefik",
      "netbox"
    ]
  },
  {
    "ansible_groups": [
      "linux",
      "docker",
      "confluence",
      "jira",
      "traefik"
    ]
  }

]

vm = {
  disks    = [{ template = true }]
  memory   = 8192
  template = "centos7-2021-03-07"
}
