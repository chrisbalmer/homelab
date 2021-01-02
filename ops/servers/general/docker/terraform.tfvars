name        = "docker"
vm_count    = 2
prefix      = "ops"
op_vm_login = "Docker Instances"

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

vm = {
  disks   = [{ template = true }]
  memory = 8192
}

ansible_groups = [
  [
    "docker",
    "gitea",
    "traefik"
  ],
  [
    "docker",
    "confluence",
    "jira",
    "traefik"
  ]
]
ansible_host_key_check = false
