# Terraform AWS ACM Certificate Module

This repository contains a Terraform module for querying for a certificate managed by the AWS Certificate Manager (ACM). 

One can simply reference the domain of the certificate and use the output of this module without having to hard code ARNs as input. 

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

This module purely uses the data source to get the ARN of a certificate in ACM, and does not automate the creation of AMC certificates. 

This module also does not use the ACM certificate resource yet, so it doesn't allow for the requesting and management of certificates from ACM. 
