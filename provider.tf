# Needs to be defined: please verify in the documentation
# https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/is_vpc

provider "ibm" {
  region = var.region
}

terraform {
  required_version = ">=1.0.0, <2.0"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}