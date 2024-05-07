terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }

  backend "s3" {
    bucket = "mutthu2512-remote"
    key    = "provisioner"
    region = "us-east-1"
    dynamodb_table = "mutthu-dynamodb"
  }
}

  provider "aws" {
    region = "us-east-1"
}