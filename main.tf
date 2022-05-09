terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
}

provider "aws" {
  alias  = "east"
  region = "us-east-2"
}


provider "aws" {
  alias  = "west"
  region = "us-west-2"
}

resource "aws_instance" "example_a" {
  ami           = "ami-05803413c51f242b7"
  instance_type = "t2.micro"
  provider      = aws.east
}

resource "aws_instance" "example_b" {
  ami           = "ami-0688ba7eeeeefe3cd"
  instance_type = "t2.micro"
  provider      = aws.west
}
