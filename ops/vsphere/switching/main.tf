terraform {
  required_providers {
    onepassword = {
      source  = "anasinnyk/onepassword"
      version = "1.2.1"
    }

    vsphere = {
      source  = "hashicorp/vsphere"
      version = "1.24.2"
    }
  }
}

provider "vsphere" {
  vsphere_server       = var.vcenter_host
  user                 = data.onepassword_item_login.vcenter.username
  password             = data.onepassword_item_login.vcenter.password
  allow_unverified_ssl = true
}

provider "onepassword" {
  subdomain = var.op_subdomain
}

data "onepassword_vault" "op_homelab" {
  name = var.op_vault
}

data "onepassword_item_login" "vcenter" {
  name  = var.op_vcenter_login
  vault = data.onepassword_vault.op_homelab.name
}

module "switches" {
  source = "github.com/chrisbalmer/terraform-vsphere-switching?ref=v0.2.0"

  datacenter  = var.datacenter
  name        = var.name
  hosts       = var.hosts
  port_groups = var.port_groups
  nioc        = var.nioc
  ldo         = var.ldo
}
