module "vpc" {
  source = "../modules/vpc"
  region = "${var.region}"
  cidr_block = "${var.cidr_block}"
  cidr_block_subnet_1 = "${var.cidr_block_subnet_1}"
}

module "ec2" {
  source = "../modules/ec2" 
  region = "${var.region}"
  aws_ami_id = "${var.aws_ami_id}"
  subnet_id = "${module.vpc.subnet_id}"
}
