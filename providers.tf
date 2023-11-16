terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

terraform {
  cloud {
    organization = "KingWhales"

    workspaces {
      name = "terra-house-1"
    }
  }
}

provider "aws" {
  # Configuration options
}


provider "random" {
  # Configuration options
}