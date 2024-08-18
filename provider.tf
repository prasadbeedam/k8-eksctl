terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
   backend "s3" {
    bucket = "anuprasad-new"
    key    = "expense-dev-aws-tools"
    region = "us-east-1"
    dynamodb_table = "anuprasad-dev-locking-new"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}