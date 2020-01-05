variable "environment_name" {
  type = string
  default = "staging"
}

variable "nodes" {
  type = list(object({
    address = string
    user = string
    role = list(string)
    ssh_key = string
  }))

  # Default to a single node for homelab staging
  default = [
    {
      address = "skc.local"
      user = "chrisbalmer"
      role = ["controlplane", "etcd", "worker"]
      ssh_key = "~/.ssh/id_rsa"
    }
  ]
}

