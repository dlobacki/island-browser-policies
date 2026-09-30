terraform {
  required_version = ">= 1.6.0"

  required_providers {
    island = {
      source  = "acme-internal/island"
      version = "~> 0.4"
    }
  }
}

provider "island" {
  tenant = "acme"
}
