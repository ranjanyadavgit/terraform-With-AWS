#AWS EC2 SECURITY GROUP TERRAFORM MODULE

#SECURITY GROUP FOR Private Ec2 instance

module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"

  name="private-sg"
  description = "security group with HTTP & ssh port open for etire VPC Block(IPv4 CIDR), egress port open for everyone"
  vpc_id = module.vpc.vpc_id 

  #ingress rules and cidr block
  
  ingress_rules       = ["ssh-tcp","http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  #Egress rules for all 
  egress_rules = ["all-all"]
  tags = local.common_tags

