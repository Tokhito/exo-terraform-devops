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

resource "aws_instance" "hetic_group_7_instance" {
  ami           = "ami-0277155c3f0ab2930"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_s3_bucket" "hetic_group_7_bucket" {
  bucket = "mt4"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}