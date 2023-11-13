terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
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