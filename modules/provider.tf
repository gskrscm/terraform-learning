provider "aws" {
    region = "${var.region}"
}

resource "aws_vpc" "hello_vpc" {
  cidr_block       = "${var.cidr_block}"
  instance_tenancy = "default"

  tags {
    Name = "main"
    Location = "Bangalore"
  }
}

resource "aws_subnet" "hello_subnet_1" {
  vpc_id     = "${aws_vpc.hello_vpc.id}"
  cidr_block = "${var.cidr_block_subnet_1}"

  tags {
    Name = "Subnet_1"
  }
}
