provider "aws" {
    region = "ap-south-1"
}

resource "aws_vpc" "hello_vpc" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags {
    Name = "main"
    Location = "Bangalore"
  }
}

resource "aws_subnet" "hello_subnet_1" {
  vpc_id     = "${aws_vpc.hello_vpc.id}"
  cidr_block = "190.160.1.0/24"

  tags {
    Name = "Subnet_1"
  }
}
