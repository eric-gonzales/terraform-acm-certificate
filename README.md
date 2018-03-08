# Terraform AWS ACM Certificate Module

This repository contains a Terraform module for querying for a certificate managed by the AWS Certificate Manager (ACM). 

## Usage

The following example queries ACM for a certificate and returns its ARN.

```hcl
module "certificate" {
  source   = "eric-gonzales/terraform-aws-acm-certificate"

  domain   = "*.example.com"
  types    = ["IMPORTED"]
  statuses = ["ISSUED"]
}


output "base_url" {
  value = "${module.certificate.arn}"
}
```

## Limitations

This module cannot currently perform the following functions:

* 