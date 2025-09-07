#AWS Security Group Terraform outputs
#Public bastion host security group output


## public bastion security group id

output "public_bastion_security_group_id" {
  description = "The ID of the security group"
  value       = module.public_bastion_sg.this_security_group_id
}
#public bastion security group vpc id
output "public_bastion_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.public_bastion_sg.this_security_group_vpc_id
}


#public bastion security group name
output "public_bastion_security_group_name" {
  description = "The name of the security group"
  value       = module.public_bastion_sg.this_security_group_name
}

#Private EC2 instance security group output

#private security group id


output "private_sg_group_id" {
    description = "The id of the security group"
    value = module.private_sg.this_security_group_id
}

#private security group vpc id
output "private_sg_group_vpc_id" {
    description = "the id of the sg group vpc name"
    value = module.private_sg.this_security_group_vpc_id  
}

#private security group name
output "private_sg_group_name" {
    description = "the private sg group name"
    value = module.private_sg.this_security_group_name

  
}


