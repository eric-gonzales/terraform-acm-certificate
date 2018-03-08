data "aws_acm_certificate" "certificate" {
  domain   = "${var.domain}"
  statuses = "${var.statuses}"
  types = "${var.types}"
}
