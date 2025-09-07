#AWS EC2 instance type

#variables for ec2 instance

variable "instance_type" {
   description = "AWS EC2 instance types"
   type = string
   default = "t3.micro"
  
}

#AWS instance key pair

variable "instance_key_pair" {
    description = "instance key pair"
    type=string
    default = "terraform-key"
  
}

#AWS private ec2 instance count

variable "private_instance_count" {
    description = "aws private instance count "
    type = number
    default = 1
  
}
