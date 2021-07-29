resource "aws_security_group" "SecGrds" {
  name   = "SecGrds"
  vpc_id = var.VPCID

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name_tag}-${var.environment}-SecGrds"
  }
}