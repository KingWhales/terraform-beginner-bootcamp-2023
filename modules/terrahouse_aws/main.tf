terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "website_bucket" {
  bucket = var.bucket_name


  tags = {
    UserUuid  = "My bucket"
  }
}