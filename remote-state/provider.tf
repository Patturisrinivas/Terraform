terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "learn-remote-state"
    key    = "expense-learing"
    region = "us-east-1"
    dynamodb_table = "learn-state-locking"
    
    }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}