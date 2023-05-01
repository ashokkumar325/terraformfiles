
resource "aws_lb" "alb" {
  name               = "timing-alb"
  internal           = var.internal
  load_balancer_type = var.lb
  security_groups    = var.security_groups
  subnets            = var.subnet_id
  idle_timeout = var.time-out
  enable_deletion_protection = true

 

  tags = {
    Environment = "production"
  }
} 