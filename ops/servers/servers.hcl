locals {
  environment = "ops"
  ssh_keys = [
    "~/.ssh/id_rsa.pub",
    "~/.ssh/awx.pub"
  ]
}