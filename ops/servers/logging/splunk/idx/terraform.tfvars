name        = "splunkidx"
vm_count    = 3
prefix      = "ops"
op_vm_login = "Splunk Instances"

networks = [
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.25/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.26/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ],
  [
    {
      interface    = "ens160"
      port_group   = "vlan129-servers"
      ipv4_address = "172.21.129.27/24"
      gateway      = "172.21.129.1"
      nameservers  = "172.21.129.251,172.21.129.252,172.21.7.211"
    }
  ]
]

vm = {
  gateway = "172.21.129.1"
  disks = [
    {
      template = true
      size     = 200
    }
  ]
  memory   = 16384
  cpus     = 3
  template = "centos7-2021-01-27"
}

ansible_groups = [
  [
    "splunk",
    "splunk_idx"
  ]
]
ansible_host_key_check = false