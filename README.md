# Homelab

This is meant to be a start to finish deployment of my homelab using only IAC and CM. Currently a raw work in progress.

## Tasks

- [ ] Write PanOS rule module
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
