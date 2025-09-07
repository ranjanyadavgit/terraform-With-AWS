#AWS EC2 SECURITY GROUP TERRAFORM MODULE

#SECURITY GROUP FOR PUBLIC BASTION HOST

module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"

  name="public-bastion-sg"
  description = "security group with ssh port open for everyone(ipv4), egress port open for everyone"
  vpc_id = module.vpc.vpc_id 

  #ingress rules and cidr block
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]

  #Egress rules for all 
  egress_rules = ["all-all"]
  tags = local.common_tags




}
