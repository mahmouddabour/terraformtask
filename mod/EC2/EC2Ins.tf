resource "aws_instance" "web1" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  subnet_id = var.Privatea1block
  key_name = "deployer-key"
  security_groups = [var.secec2arn]
  tags = {
    Name = "${var.name_tag}-${var.environment}-web1"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  subnet_id = var.Privatea2block
  key_name = "deployer-key"
  security_groups = [var.secec2arn]
  tags = {
    Name = "${var.name_tag}-${var.environment}-web2"
  }
}

resource "aws_instance" "bastian" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  subnet_id = var.Publica1block
  associate_public_ip_address = true
  key_name = "deployer-key"
  security_groups = [var.secec2arn]
  tags = {
    Name = "${var.name_tag}-${var.environment}-web2"
  }
}