terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3"{
    key = "vijay-locking-foreach"
    dynamodb_table = "vijay-remotestate-lock"
    bucket="vijay-remote-state"
    region ="us-east-1"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
