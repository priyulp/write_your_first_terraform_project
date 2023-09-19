provider "aws" {
  region  = "us-west-2"
  access_key = "AKIA5TQPF5JBOZLMM3WN"
  secret_key = "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"
}

resource "aws_instance" "project" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo1"
  }
}

