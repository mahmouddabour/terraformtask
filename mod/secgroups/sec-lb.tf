resource "aws_security_group" "allowlb" {
  name        = "allowlb"
  description = "Allow lb inbound traffic"
  vpc_id      = var.VPCID

  ingress {
    description      = "http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
 
  }

  tags = {
    Name = "${var.name_tag}-${var.environment}-lbsecG"
  }
}