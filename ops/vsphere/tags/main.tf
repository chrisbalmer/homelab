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

locals {
  tags = flatten([
    for group in keys(var.categories) : [
      for tag in var.categories[group]["tags"] : {
        group = group
        tag   = tag
      }
    ]
  ])
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

resource "vsphere_tag_category" "category" {
  for_each         = var.categories
  name             = each.key
  cardinality      = each.value["cardinality"]
  description      = each.value["description"]
  associable_types = each.value["types"]
}

resource "vsphere_tag" "tag" {
  count       = length(local.tags)
  name        = local.tags[count.index]["tag"]
  category_id = vsphere_tag_category.category[local.tags[count.index]["group"]].id
}
