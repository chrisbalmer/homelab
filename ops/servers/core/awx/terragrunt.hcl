include {
  path = find_in_parent_folders()
}

terraform {
  source = "github.com/chrisbalmer/terraform-vsphere-server//?ref=v0.6.1"
}
