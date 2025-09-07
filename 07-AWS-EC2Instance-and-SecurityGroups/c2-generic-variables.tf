# AWS Variables

variable "aws_region" {
  description = "region in which aws vpc is be created"
  type = string
  default = "ap-south-1" 
}

variable "environment" {
    description = "value of the environment variable"
    type = string
    default = "dev"
  
}

variable "business_divison" {
    description = "value of the business to be created"
    type = string
    default = "SAP"
  
}
