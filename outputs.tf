output "arn" {
  description = "The ARN of the certificate"
  value = "${data.aws_acm_certificate.expapp.arn}"
}
