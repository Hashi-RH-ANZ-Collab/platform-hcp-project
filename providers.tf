terraform {
  required_providers {
    hcp = {
      source = "hashicorp/hcp"
      version = "0.106.0"
    }
  }
}

provider "hcp" {
}