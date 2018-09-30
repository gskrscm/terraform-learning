module "vpc" {
  source = "../modules/vpc"
  cidr_block = "${var.cidr_block}"
  cidr_block_subnet_1 = "${var.cidr_block_subnet_1}"
}
