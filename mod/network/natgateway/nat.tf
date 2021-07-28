resource "aws_nat_gateway" "gwNAT" {
  allocation_id = var.awseipid
  subnet_id     = var.awssubnetpublica1

  tags = {
    Name = "${var.name_tag}-${var.environment}-gwNAT"
  }

}