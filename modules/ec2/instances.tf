provider "aws" {
    region = "${var.region}"
}
resource "aws_instance" "web" {
  ami           = "${var.aws_ami_id}"
  instance_type = "t2.micro"
  subnet_id = "${var.subnet_id}"
  tags {
    Name = "HelloWorld"
  }
}