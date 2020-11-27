include {
  path = find_in_parent_folders()
}

locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  environment = local.environment_vars.locals.environment
}

terraform {
  source = "../../../../modules/panos/applied_rules"
  
  after_hook "commit" {
    commands     = ["destroy", "apply"]
    execute      = ["bash", "${get_parent_terragrunt_dir()}/scripts/commit.sh"]
    run_on_error = false
  }
}