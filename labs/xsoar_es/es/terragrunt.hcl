include {
  path = find_in_parent_folders()
}

locals {
  lab_vars = read_terragrunt_config(find_in_parent_folders("labs.hcl"))
  ssh_keys = local.lab_vars.locals.ssh_keys
  prefix   = local.lab_vars.locals.environment
}

inputs = {
  ssh_keys = local.ssh_keys
  prefix   = local.prefix
}

terraform {
  source = "github.com/chrisbalmer/terraform-vsphere-server//?ref=v1.0.0"
}
