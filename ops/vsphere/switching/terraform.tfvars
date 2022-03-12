name = "farm-switch-1"
ds_version = "6.5.0"

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
        name = "trunk-paloalto"
        vlan_ranges = [
            {
                min_vlan = 0
                max_vlan = 4094
            }
        ]
    },
    {
        name = "trunk-wlc"
        vlan_ranges = [
            {
                min_vlan = 8
                max_vlan = 8
            },
            {
                min_vlan = 21
                max_vlan = 21
            },
            {
                min_vlan = 28
                max_vlan = 28
            },
            {
                min_vlan = 2302
                max_vlan = 2302
            }
        ]
    },
    {
        name = "trunk-zeek"
        vlan_ranges = [
            {
                min_vlan = 0
                max_vlan = 4094
            }
        ]
        allow_promiscuous = true
    },
    {
        name = "vlan7-management"
        vlan = 7
    },
    {
        name = "vlan7-management-ephemeral"
        vlan = 7
        auto_expand = false
        type = "ephemeral"
    },
    {
        name = "vlan14-legacy"
        vlan = 14
    },
    {
        name = "vlan21-endpoints"
        vlan = 21
    },
    {
        name = "vlan56-san1"
        vlan = 56
    },
    {
        name = "vlan63-vmotion"
        vlan = 63
    },
    {
        name = "vlan128-identity"
        vlan = 128
    },
    {
        name = "vlan129-servers"
        vlan = 129
    },
    {
        name = "vlan130-loadbalancers"
        vlan = 130
    },
    {
        name = "vlan255-null"
        vlan = 255
    },
    {
        name = "vlan2020-edge"
        vlan = 2020
    },
    {
        name = "vlan2050-dmz"
        vlan = 2050
    },
    {
        name = "vlan2302-guest"
        vlan = 2302
    }
]

datacenter = "farm"

vcenter_host     = "vcenter.balmerfamilyfarm.com"
op_subdomain     = "my"
op_vault         = "homelab"
op_vcenter_login = "vcenter.balmerfamilyfarm.com - sso"