terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0" # AWS provider version, not terraform version
    }
  }

   backend "s3" {
    bucket = "devops-remote-state"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "devops-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}