terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "timeing-remote-lock"
    key    = "time-lock"
    region = "us-west-1"
    dynamodb_table = "time-lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-1"
}