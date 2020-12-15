name = "farm-switch-1"

hosts = [
    {
        name = "opsesxi1.ad.balmerfamilyfarm.com"
        devices = [
            "vmnic0",
            "vmnic1"
        ]
    },
    {
        name = "opsesxi2.ad.balmerfamilyfarm.com"
        devices = [
            "vmnic0",
            "vmnic1"
        ]
    },
    {
        name = "opsesxi3.ad.balmerfamilyfarm.com"
        devices = [
            "vmnic2",
            "vmnic3"
        ]
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
        name = "vlan14-legacy"
        distributed_switch = "farm-switch-1"
        vlan = 14
    },
    {
        name = "vlan21-endpoints"
        distributed_switch = "farm-switch-1"
        vlan = 21
    },
    {
        name = "vlan56-san1"
        distributed_switch = "farm-switch-1"
        vlan = 56
    },
    {
        name = "vlan63-vmotion"
        distributed_switch = "farm-switch-1"
        vlan = 63
    },
    {
        name = "vlan128-identity"
        distributed_switch = "farm-switch-1"
        vlan = 128
    },
    {
        name = "vlan129-servers"
        distributed_switch = "farm-switch-1"
        vlan = 129
    },
    {
        name = "vlan130-loadbalancers"
        distributed_switch = "farm-switch-1"
        vlan = 130
    },
    {
        name = "vlan2020-edge"
        distributed_switch = "farm-switch-1"
        vlan = 2020
    },
    {
        name = "vlan2050-dmz"
        distributed_switch = "farm-switch-1"
        vlan = 2050
    }
]

datacenter = "farm"

vcenter_host     = "vcenter.balmerfamilyfarm.com"
op_subdomain     = "my"
op_vault         = "homelab"
op_vcenter_login = "vcenter.balmerfamilyfarm.com - sso"