include {
  path = find_in_parent_folders()
}

terraform {
  after_hook "commit" {
    commands     = ["destroy", "apply"]
    execute      = ["bash", "${get_parent_terragrunt_dir()}/scripts/commit.sh"]
    run_on_error = false
  }
}