#AWS EC2 Instance module
# Bastion host - EC2 Istance that will be created in public subnet

module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.1.1"

  # insert the 10 required variables

name = "${var.environment}-BastionHost"
  

  #instance_type = "t3.micro"
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_key_pair
  #monitoring    = true
  subnet_id     = module.vpc_public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_vpc_id]

  tags = local.common_tags
}
