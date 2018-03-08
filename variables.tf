variable "domain" {
  description = "The domain of the certificate"
}

variable "statuses" {
  description = "The statuses of the certificate"
  type = "list"
}

variable "types" {
  description = "The types of the certificate"
  type = "list"
}
