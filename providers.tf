terraform {
  required_providers {
    hcp = {
      source = "hashicorp/hcp"
      version = "0.106.0"
    }

    tfe = {
      source = "hashicorp/tfe"
      version = "0.65.4-alpha.1"
    }
    
  }
}

provider "hcp" {
}