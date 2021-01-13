# Homelab

This is meant to be a start to finish deployment of my homelab using only IAC and CM. Currently a raw work in progress.

## Tasks

- Ansible
  - [ ] Change traefik containers to use non root user
  - [ ] Change pihole containers to use non root user
  - [ ] Move all http/https services on bootstrap to traefik
  - [ ] Fix bootstrap nginx to not use port 80 to free it up for traefik
  - [ ] Fix traefik 80 -> 443 redirect
  - [ ] Fix loop labels
  - [ ] Fix loop format to use newer style
  - [ ] Look into moving docker-composes pre tasks from playbook to role
  - [ ] Clean up docker-compose role firewall
  - [ ] Block private IP lookups forwarding to upstream servers on pihole
- Terraform
  - [ ] Finish DNS server setups
  - [ ] Move PanOS object creation for server IPs to the server creation, avoids placing IP info into multiple spots
  - [ ] Add VM affinity rules to keep specific VMs separate (like dns1 and dns2)
  - [ ] Rebuild the vsphere server module to support better inheritance
  - [ ] Allow DHCP servers to ping clients
  - [ ] Allow Firewall access to DHCP servers via rule
- Misc
  - [ ] Figure out pypi mirroring or method to maintain needed packages locally
  - [ ] Move in Zeek build to this repo
  - [ ] Clean up url lists in PanOS. One for bootstrap and one for DNS servers.
  - [ ] Fix bootstrap power loss issue, the LattePanda does not automatically start up after a power loss
  - [ ] Determine why opsesxi2 sometimes does not boot ESXi
  - [ ] Determine why mgmtesxi1 does not power up after a power loss
  - [ ] Determine why edgefw1 sometimes has ports not connected after a power loss
  - [ ] Move issues to GitHub issues and out of README.md

## Power loss checks

These are the manual steps/checks that need to be performed after a power loss.

1.  Check bootstrap is booted
2.  Check mgmtesxi1 is booted
3.  Check ops hosts are booted
4.  Check switch 1 and 2 for power and full boot up
5.  Check edgefw1 network ports are all connected
6.  Check HA status of VMs
7.  Check vSAN status
8.  Check WLC status
9.  Check DHCP status
10. Check DNS status
11. Check wireless APs status
12. Check PacketFence status

## Setup

To avoid connectivity issues with the PANOS API, set this environment variable:

```bash
export TERRAGRUNT_PARALLELISM=1
```

## Dependency Order

- Manual steps (to be futher automated...)
  - Physical switches
  - ESXi
  - Initial DNS server
  - Initial AD server
  - vCenter deployment
  - Firewall deployment
  - Firewall basic config for management (can this be bootstrapped, cloud-init or?)
  - NAS deployment
- Automated steps
  - PanOS
    - Objects
    - Zones
    - Rules
  - vSphere
    - Switching
  - Servers
    - Linux Repo
    - DHCP
    - AWX
    - PacketFence

## Related GitHub Repositories

- Terraform
  - [PanOS Zone Module](https://github.com/chrisbalmer/terraform-panos-zone)
  - [PanOS Rules Module](https://github.com/chrisbalmer/terraform-panos-rules)
  - [PanOS Objects Module](https://github.com/chrisbalmer/terraform-panos-objects)
  - [vSphere VM Module](https://github.com/chrisbalmer/terraform-vsphere-vm)

## Random Notes

- Port forwarding for vCenter: `sudo ssh -L 127.0.0.1:443:172.21.7.50:443 chrisbalmer@lsasensor.local`
- Required external DNS to do initial configuration of the bootstrap server

## License

MIT
