# Homelab

This is meant to be a start to finish deployment of my homelab using only IAC and CM. Currently a raw work in progress.

## Tasks

- Ansible
  - [X] Setup docker registry on ~~mirror~~bootstrap system with ansible role
  - [X] Move Yum Repo ansible setup to role
  - [X] Move yum mirror ansible setup to role
  - [X] Move pihole to docker-compose role
  - [X] Update docker registry password name to be docker-registry.balmerfamilyfarm.com
  - [X] Fix docker-compose image version issue in the template for traefik. Set it specific for now, check old copy and compare.
  - [X] ~~Expand docker-compose role to work with config files~~ Using separate roles for now to perform further configuration
  - [X] Move remaining pihole configs to variables from the compose yaml file
  - [X] Adapt pihole/docker roles for CentOS (bootstrap server is Ubuntu)
  - [X] Add docker registry proxy to pull through - option added but not in use due to how this works (can't do both proxy and private registry)
  - [ ] Enable bootstrap firewall
  - [ ] Change traefik setup to use dynamic toml files so the docker socket mount can be removed along with privileged mode on SELinux systems
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
  - [X] Write PanOS rule module
    - [X] Base module
    - [X] Add address groups to base module
    - [X] ~~Add tags to base module~~ Add tags to an objects module
    - [X] `ops/panos/rules/deny_all` which builds the bottom deny all rule
    - [X] `ops/panos/rules/$purpose` which builds a rule around the specified purpose, including tags and address groups
  - [X] Rewrite vSphere VM module
    - [X] Add tags for PanOS (added to objects module)
    - [X] Add IPs from servers to PanOS with tags
  - [X] Build new DHCP server
    - [X] ~~Write~~Find Ansible role for isc-dhcp-server
  - [X] ~~Determine how to handle relay on PanOS~~ DHCP relay is not available in terraform yet, continuing to configure manually
  - [ ] Finish DNS server setups
  - [ ] Move PanOS object creation for server IPs to the server creation, avoids placing IP info into multiple spots
  - [ ] Add VM affinity rules to keep specific VMs separate (like dns1 and dns2)
  - [ ] Rebuild the vsphere server module to support better inheritance
- Misc
  - [ ] Figure out pypi mirroring or method to maintain needed packages locally
  - [ ] Move in Zeek build to this repo
  - [ ] Clean up url lists in PanOS. One for bootstrap and one for DNS servers.

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
