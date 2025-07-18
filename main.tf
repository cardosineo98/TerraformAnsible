terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}

provider "aws" {
  region = "us-west-2"
  profile = "default"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
  key_name      = "acesso-aws"

  tags = {
    Name = "Terraform Ansible Course"
  }
}