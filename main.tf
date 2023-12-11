

terraform {
  cloud {
    organization = "KingWhales"

    workspaces {
      name = "terra-house-1"
    }
  }
}


provider "random" {
  # Configuration options
}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}