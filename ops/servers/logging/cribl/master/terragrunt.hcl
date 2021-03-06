include {
  path = find_in_parent_folders()
}

locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  environment = local.environment_vars.locals.environment
}

terraform {
  source = "github.com/chrisbalmer/terraform-vsphere-server//?ref=v0.6.0"
}
