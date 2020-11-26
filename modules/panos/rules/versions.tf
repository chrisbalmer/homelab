terraform {
  required_providers {
    panos = {
      source  = "paloaltonetworks/panos"
      version = "1.6.3"
    }
  }
  required_version = ">= 0.13"
}
