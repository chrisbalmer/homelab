include {
  path = find_in_parent_folders()
}

locals {
  server_vars = read_terragrunt_config(find_in_parent_folders("servers.hcl"))
  ssh_keys = local.server_vars.locals.ssh_keys
}

inputs = {
  ssh_keys = local.ssh_keys
}

terraform {
  source = "github.com/chrisbalmer/terraform-vsphere-server//?ref=v0.8.0"
}