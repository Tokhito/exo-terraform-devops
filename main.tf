terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "instance_hetic_group_7" {
  ami           = "ami-0277155c3f0ab2930"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_s3_bucket" "bucket_hetic_group_7" {
  bucket = "mt4"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}