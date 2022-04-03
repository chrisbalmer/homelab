include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/panos/applied_rules"
  
  extra_arguments "custom_vars" {
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh",
      "destroy"
    ]

    required_var_files = ["${find_in_parent_folders("common.tfvars")}"]
  }
}

dependency "objects" {
  config_path = "${get_parent_terragrunt_dir()}/ops/panos/objects"
  skip_outputs = true
}

dependency "zones" {
  config_path = "${get_parent_terragrunt_dir()}/ops/panos/zones"
  skip_outputs = true
}