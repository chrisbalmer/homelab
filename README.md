# Homelab

This is meant to be a start to finish deployment of my homelab using only IAC and CM. Currently a raw work in progress.

## Tasks

- [ ] Write PanOS rule module
  - [X] Base module
  - [ ] Add address groups to base module
  - [ ] Add tags to base module
  - [X] `ops/panos/rules/deny_all` which builds the bottom deny all rule
  - [ ] `ops/panos/rules/$purpose` which builds a rule around the specified purpose, including tags and address groups
- [ ] Rewrite vSphere VM module
  - [ ] Add tags for PanOS
  - [ ] Add IPs from servers to PanOS with tags
- [ ] Build new DHCP server
  - [ ] Write Ansible role for isc-dhcp-server
- [ ] Determine how to handle relay on PanOS
- [ ] Move in Zeek build to this repo

## Related GitHub Repositories

- Terraform
  - [PanOS Zone Module](https://github.com/chrisbalmer/terraform-panos-zone)
  - [vSphere VM Module](https://github.com/chrisbalmer/terraform-vsphere-vm)

## License

MIT
