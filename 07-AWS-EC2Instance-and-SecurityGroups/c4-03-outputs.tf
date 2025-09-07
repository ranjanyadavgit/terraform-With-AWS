#VPC ID

output "vpc_id" {
  description = "the ID of the vpc"
  value       = module.vpc.vpc_id
}

#VPC CIDR BLOCK
output "vpc_cidr_block" {
  description = "the vpc cidr block"
  value       = module.vpc.vpc_cidr_block

}

#VPC PRIVATE SUBNET
output "private_subnets" {
  description = "the private subnet"
  value       = module.vpc.public_subnets

}
#VPC PUBLIC SUBNET
output "public_subnets" {
  description = "thepublic subnet"
  value       = module.vpc.private_subnets

}

#VPC NAT GATEWAY  public ips

output "nat_public_ips" {
  description = "nat public ips"
  value       = module.vpc.nat_public_ips
}

#VPC AZS

output "AZS" {
  description = "A list of availablity zones specfied as arguments"
  value       = module.vpc.azs

}
