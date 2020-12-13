distributed_switches = [
    {
        name = "farm-switch-1"
    }
]

port_groups = [
    {
        name = "vlan7-management"
        distributed_switch = "farm-switch-1"
        vlan = 7
    },
    {
        name = "vlan7-management-ephemeral"
        distributed_switch = "farm-switch-1"
        vlan = 7
        auto_expand = false
        type = "ephemeral"
    },
    {
        name = "vlan21-endpoints"
        distributed_switch = "farm-switch-1"
        vlan = 21
    },
    {
        name = "vlan2020-edge"
        distributed_switch = "farm-switch-1"
        vlan = 2020
    }
]

datacenter = "farm"
hosts = [
    "opsesxi1.ad.balmerfamilyfarm.com",
    "opsesxi2.ad.balmerfamilyfarm.com",
    "opsesxi3.ad.balmerfamilyfarm.com"
]

vcenter_host     = "vcenter.balmerfamilyfarm.com"
op_subdomain     = "my"
op_vault         = "homelab"
op_vcenter_login = "vcenter.balmerfamilyfarm.com - sso"