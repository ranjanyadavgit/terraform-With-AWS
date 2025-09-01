terraform {
  required_version = "~> 1.12.2"

  required_providers {
     aws = {
        source = "hashicorp/aws"
        version = "6.11.0"
     }
  }
}

# provider version
provider "aws" {
   region = var.aws_region
}
