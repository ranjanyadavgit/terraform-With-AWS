variable "aws_region" {
    description = "region in which aws resource to be created"
    type = string
    default = "us-east-1"
  
}

variable "instance_type" {
    description = "value of instance type to be created"
    type = string
    default = "t3.micro"
  
}

variable "instance_keypair" {
    description = " instance keypair to be associated with aws ec2 instance"
    type = string
    default = "terraform-key"
  
}

# AWS instance type - list
variable "instance_type_list" {
    description = "Ec2 instance type list"
    type = list(string)
    default = [ "t3.micro","t3.small" ,"t3.large"]
  
}


# AWS instance type - map
variable "instance_type_map" {
    description = "Ec2 instance type map"
    type = map(string)
    default = {
      "dev" = "t3.micro"
      "qa" = "t3.small"
      "prod" = "t3.large"
    }
  
}



