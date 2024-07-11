terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket"

  tags = {
    Name        = "my-example-bucket"
    Environment = "dev"
  }
}
