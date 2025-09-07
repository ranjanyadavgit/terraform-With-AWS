
#Variable input variable
# VPC name

variable "vpc_name" {

    description = "value of vpc name"
    type = string
    default = "myvpc"
  
}

#cidr block
variable "cidr_block" {
    description = "value of cidr block"
    type = string
    default = "10.0.0.0/16"
  
}

#availability zone

variable "vpc_availability_zones" {
    description = "value of the availability zone"
    type = list(string)
    default = ["us-east-1a","us-east-1b"]
   
}

# Variable Public Subnet
variable "vpc_public_subnets"{
    description = "the value of public subnets"
    type = list(string)
    default = ["10.0.101.0/24","10.0.102.0/24"]
}

variable "vpc_private_subnets" {
    description = "the value of rivate subnets"
    type = list(string)
    default = [ "10.0.1.0/24","10.0.2.0/24" ]
 
}

variable "vpc_database_subnets" {
    description = " the value of database subnets"
    type = list(string)
    default = [ "10.0.151.0/24","10.0.152.0/24" ]

}

variable "vpc_create_database_subnet_group" {
  description = "VPC CREATE  DATABASE SUBNET GROUP"
  type        = bool
  default     = true

}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type        = bool
  default     = true
}

# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type        = bool
  default     = true

}


#VPC  single nat gateway(true)
variable "vpc_subnet_nat_gateway" {
  description = "vpc subnet nat gateway"
  type        = bool
  default     = true

}

