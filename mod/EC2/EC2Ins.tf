resource "aws_instance" "web1" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  subnet_id = var.Privatea1sub
  key_name = "deployer-key"
  security_groups = [var.secec2arn]
   user_data = <<-EOF
    #!/bin/bash
    echo "*** Installing apache2"
    sudo apt update -y
    sudo apt install apache2 -y
    echo "*** Completed Installing apache2"
  EOF

  lifecycle {
    ignore_changes = all
  }
  tags = {
    Name = "${var.name_tag}-${var.environment}-web1"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  subnet_id = var.Privatea2sub
  key_name = "deployer-key"
  security_groups = [var.secec2arn]
   
   user_data = <<-EOF
    #!/bin/bash
    echo "*** Installing apache2"
    sudo apt update -y
    sudo apt install apache2 -y
    echo "*** Completed Installing apache2"
  EOF
lifecycle {
    ignore_changes = all
  }
  
  tags = {
    Name = "${var.name_tag}-${var.environment}-web2"
  }
}

resource "aws_instance" "bastian" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  subnet_id = var.Publica1sub
  associate_public_ip_address = true
  key_name = "deployer-key"
  security_groups = [var.secec2basarn]
  lifecycle {
    ignore_changes = all
  }
  tags = {
    Name = "${var.name_tag}-${var.environment}-bastian"
  }
}