data "aws_acm_certificate" "expapp" {
  domain   = "${var.domain}"
  statuses = "${var.statuses}"
  types = "${var.types}"
}
