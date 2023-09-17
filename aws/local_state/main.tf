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
  region  = "us-west-2"
  AWS_ACCESS_KEY = "AKIA5TQPF5JBOZLMM3WN"
  AWS_SECRET_ACCESS_KEY = "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"

}

resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

