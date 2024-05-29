# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-2"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0ca2e925753ca2fb4" # Amazon Linux in us-east-2, update as per your region
  instance_type = "t2.micro"
}