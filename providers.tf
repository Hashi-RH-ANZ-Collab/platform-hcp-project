terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60.0"
    }
    hcp = {
      source = "hashicorp/hcp"
      version = "~> 0.72.0"
    }
  }
}

provider "hcp" {
}