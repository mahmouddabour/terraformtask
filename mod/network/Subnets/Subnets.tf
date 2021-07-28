resource "aws_subnet" "Publica1" {
  vpc_id     = var.VPCID
  cidr_block = var.Publica1block
  availability_zone = var.availability_zone1

  tags = {
    Name = "${var.name_tag}-${var.environment}-Public1"
  }
}

resource "aws_subnet" "Publicb1" {
  vpc_id     = var.VPCID
  cidr_block = var.Publicb1block
  availability_zone = var.availability_zone2

  tags = {
    Name = "${var.name_tag}-${var.environment}-Public2"
  }
}

resource "aws_subnet" "Privatea1" {
  vpc_id     = var.VPCID
  cidr_block = var.Privatea1block
  availability_zone = var.availability_zone1

  tags = {
    Name = "${var.name_tag}-${var.environment}-Privatea1"
  }
}
resource "aws_subnet" "Privatea2" {
  vpc_id     = var.VPCID
  cidr_block = var.Privatea2block
  availability_zone = var.availability_zone1

  tags = {
    Name = "${var.name_tag}-${var.environment}-Privatea2"
  }
}
resource "aws_subnet" "Privateb1" {
  vpc_id     = var.VPCID
  cidr_block = var.Privateb1block
  availability_zone = var.availability_zone2

  tags = {
    Name = "${var.name_tag}-${var.environment}-Privateb1"
  }
}


resource "aws_subnet" "Privateb2" {
  vpc_id     = var.VPCID
  cidr_block = var.Privateb2block
  availability_zone = var.availability_zone2

  tags = {
    Name = "${var.name_tag}-${var.environment}-Privateb2"
  }
} 

resource "aws_subnet" "Privateb3" {
  vpc_id     = var.VPCID
  cidr_block = var.Privateb3block
  availability_zone = var.availability_zone1

  tags = {
    Name = "${var.name_tag}-${var.environment}-Privateb3"
  }
}

resource "aws_subnet" "Privateb4" {
  vpc_id     = var.VPCID
  cidr_block = var.Privateb4block
  availability_zone = var.availability_zone2

  tags = {
    Name = "${var.name_tag}-${var.environment}-Privateb4"
  }
}