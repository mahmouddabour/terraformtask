resource "aws_vpc" "mainvpc" {
  cidr_block       = var.vpcblock
  instance_tenancy = "default"

  tags = {
    Name = "${var.name_tag}-${var.environment}-VPC"
  }
}