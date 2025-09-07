#AWS EC2 Instance Terraform Output
#Public EC2 instance

# ec2_basion_public_ec2_instance_ids
#  ec2 bastion public ip
# EC2 Complete
output "ec2_basion_public_ec2_instance_ids" {
  description = "The ID of the instance"
  value       = module.ec2_public.id
}

output "ec2_bastion_public_ip" {
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2_public.public_ip
}

# private ec2 instance

output "ec2_private_instance_ids" {
  description = "The ID of the instance"
  value       = module.ec2_private.id
}

#ec2 private ip
output "ec2_private_ip" {
  description = "the list of private ip address that assiged to the instances"
  value       = module.ec2_private.private_ip
}
