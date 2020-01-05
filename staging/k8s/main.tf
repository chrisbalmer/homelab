provider "onepassword" {
    subdomain  = "my"
}

provider "kubernetes" {
  host = module.rke.cluster.api_server_url
  client_certificate = module.rke.cluster.client_cert
  client_key = module.rke.cluster.client_key
  cluster_ca_certificate = module.rke.cluster.ca_crt
}

data "onepassword_vault" "op_homelab" {
    name = "homelab"
}

data "onepassword_item_login" "op_do_token" {
    name = "do-traefik-staging-api"
    vault = data.onepassword_vault.op_homelab.name
}


module "rke" {
  source = "git::https://github.com/chrisbalmer/terraform-rke.git"
  
  nodes = var.nodes
  environment_name = var.environment_name
}

module "traefik" {
  source = "git::https://github.com/chrisbalmer/terraform-traefik.git"

  do_token = data.onepassword_item_login.op_do_token.password
}