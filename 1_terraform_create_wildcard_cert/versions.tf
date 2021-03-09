terraform {
  required_providers {
    acme = {
      source = "vancluever/acme"
    }
    local = {
      source = "hashicorp/local"
    }
    tls = {
      source = "hashicorp/tls"
    }
  }
  required_version = ">= 0.13"
}
