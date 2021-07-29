resource "aws_db_instance" "rdspostgree" {
  identifier             = "rdspostgree"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "13.1"
  apply_immediately      = true
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.dbsubnetgroup.name
  vpc_security_group_ids = [var.SecGrds]
  parameter_group_name   = aws_db_parameter_group.rdspostgree.name
  skip_final_snapshot    = true
}

resource "aws_db_parameter_group" "rdspostgree" {
  name   = "rdspostgree"
  family = "postgres13"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_db_subnet_group" "dbsubnetgroup" {
  name       = "dbsubnetgroup"
  subnet_ids = [var.subnetPrivateb1id,var.subnetPrivateb2id]

  tags = {
    Name = "${var.name_tag}-${var.environment}-dbsubnetgroup"
  }
}