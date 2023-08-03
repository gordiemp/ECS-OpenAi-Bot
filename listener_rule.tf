resource "aws_lb_listener" "open_ai" {
  load_balancer_arn = aws_lb.default.id
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.open_ai.id
    type             = "forward"
  }
}
