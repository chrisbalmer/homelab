include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/panos/applied_rules"
  
  after_hook "commit" {
    commands     = ["destroy", "apply"]
    execute      = ["bash", "${get_parent_terragrunt_dir()}/scripts/commit.sh"]
    run_on_error = false
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