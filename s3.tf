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
variable "region" {
  description = "The AWS region to deploy in"
  type        = string
}

variable "access_key" {
  description = "AWS access key"
  type        = string
}

variable "secret_key" {
  description = "AWS secret key"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "The environment where this resource is deployed (e.g., dev, prod)"
  type        = string
}
