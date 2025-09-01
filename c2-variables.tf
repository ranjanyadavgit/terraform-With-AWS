# input variables

#AWS regions

variable "aws_region" {
    description = "region in which aws resource to be created"
    type = string
    default = "us-east-1"
  
}

#instance type
variable "instance_type" {
    description = "type of ec2 instance"
    type = string
    default = "t3.micro"  
}

#instance key pair

variable "instance_keypair" {
    description = "AWS ec2 key pair that need to be associated with ec2"
    type = string
    default = "terraform-key"
  
}