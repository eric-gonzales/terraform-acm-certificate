# Terraform AWS ACM Certificate Module

This repository contains a Terraform module for querying for a certificate managed by the AWS Certificate Manager (ACM). 

## Usage

The following example deploys a NodeJS-based Lambda function and creates a
public-facing API Gateway proxy in front of it.

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