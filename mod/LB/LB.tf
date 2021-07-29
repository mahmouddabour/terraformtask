resource "aws_lb_target_group" "publiclbTG" {
  name     = "publiclbTG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.VPCID
}

resource "aws_lb" "lb" {
  name               = "pblb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.seclbarn]
  subnets            = [var.Publica1sub,var.Publicb1sub]
lifecycle {
    ignore_changes = all
  }

  tags = {
    Name = "${var.name_tag}-${var.environment}-lb"
  }
}

resource "aws_lb_listener" "publiclbTGlistener" {
  load_balancer_arn = aws_lb.lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.publiclbTG.arn
  }
}

resource "aws_lb_target_group_attachment" "publiclbTGattachment" {
  target_group_arn = aws_lb_target_group.publiclbTG.arn
  target_id        = var.ec2web1
  port             = 80
}
resource "aws_lb_target_group_attachment" "publiclbTGattachment2" {
  target_group_arn = aws_lb_target_group.publiclbTG.arn
  target_id        = var.ec2web2
  port             = 80
}