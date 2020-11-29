terraform {
  required_providers {
    onepassword = {
      source  = "anasinnyk/onepassword"
      version = "1.2.1"
    }

    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "1.6.3"
    }
  }
}

provider "panos" {
  hostname = var.panos_host
  username = data.onepassword_item_login.edgefw.username
  password = data.onepassword_item_login.edgefw.password
}

provider "onepassword" {
  subdomain = var.op_subdomain
}

data "onepassword_vault" "op_homelab" {
  name = var.op_vault
}

data "onepassword_item_login" "edgefw" {
  name  = var.op_edgefw_login
  vault = data.onepassword_vault.op_homelab.name
}

module "objects" {
  source = "github.com/chrisbalmer/terraform-panos-objects?ref=v0.2.4"

  tags           = var.tags
  addresses      = var.addresses
  address_groups = var.address_groups
}
