resource "aws_internet_gateway" "gw" {
  vpc_id = var.VPCID

  tags = {
    Name = "${var.name_tag}-${var.environment}-gw"
  }
}