resource "aws_route_table" "privatesubnet" {
  vpc_id = var.VPCID

  tags = {
    Name = "${var.name_tag}-${var.environment}-Privateawy-rt"
  }
}

resource "aws_route_table" "private" {
  vpc_id = var.VPCID

 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.natid
  }

  tags = {
    Name = "${var.name_tag}-${var.environment}-Private-rt"
  }
}

resource "aws_route_table" "Public" {
  vpc_id = var.VPCID
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gwid
  }

  tags = {
    Name = "${var.name_tag}-${var.environment}-Public-rt"
  }
}