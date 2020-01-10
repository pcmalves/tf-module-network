resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_support   = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"

  tags = {
    Name = "vpc-${var.tag_name}"
  }
}

resource "aws_subnet" "subnet-main" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "${var.subnet_cidr_block}"
  map_public_ip_on_launch = "${var.map_public_ip_on_launch}"
  availability_zone       = "${var.availability_zone}"

  tags = {
    Name = "subnet-${var.tag_name}"
  }
}
