terraform {
  required_providers {
    # ansible = {
    #   source  = "nbering/ansible"
    #   version = "1.0.4"
    # }

    dns = {
      version = "2.2"
    }

    onepassword = {
      source  = "anasinnyk/onepassword"
      version = "1.2.1"
    }

    template = {
      version = "2.1"
    }

    vsphere = {
      version = "1.24.3"
    }
  }
}

provider "onepassword" {
  subdomain = var.op_subdomain
}

provider "vsphere" {
  user                 = data.onepassword_item_login.vcenter.username
  password             = data.onepassword_item_login.vcenter.password
  vsphere_server       = var.vsphere_server
  allow_unverified_ssl = true
}

data "onepassword_vault" "op_homelab" {
  name = var.op_vault
}

data "onepassword_item_login" "vcenter" {
  name  = var.op_vcenter_login
  vault = data.onepassword_vault.op_homelab.name
}

data "onepassword_item_login" "workstation" {
  name  = var.op_workstation_login
  vault = data.onepassword_vault.op_homelab.name
}

data "onepassword_item_login" "vm" {
  name  = var.op_vm_login
  vault = data.onepassword_vault.op_homelab.name
}

module "server" {
  source = "/Users/chrisbalmer/code/terraform-vsphere-vm"

  vm               = var.vm
  cluster_settings = var.cluster_settings

  initial_key = [for field in [for section in data.onepassword_item_login.workstation.section : section if section["name"] == "Public"][0].field : field if field["name"] == "ssh_public_key"][0]["string"]
  cloud_user  = data.onepassword_item_login.vm.username
  cloud_pass  = data.onepassword_item_login.vm.password
}


