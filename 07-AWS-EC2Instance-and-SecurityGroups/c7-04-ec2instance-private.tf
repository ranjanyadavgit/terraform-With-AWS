
#AWS EC2 Instance module
# AWS EC2 Instance that will be created in rivate subnet
module "ec2_private" {
    depends_on = [ module.vpc ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.1.1"

  # insert the 10 required variables

name = "${var.environment}-PrivateVMs"
  

  #instance_type = "t3.micro"
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_key_pair
  user_data = file("${path.module}/app1-install.sh")
  tags = local.common_tags

  #monitoring    = true
  #subnet_id     = module.vpc_public_subnets[0]
  # BELOW CODE COMMENTED AS PART OF MODULE UPGRADE TO 5.5.0
  #subnet_ids = [
  #  module.vpc.private_subnets[0],
  #  module.vpc.private_subnets[1]
  #]
  # vpc_security_group_ids = [module.public_bastion_sg.this_security_group_vpc_id]
  #instance_count = var.private_instance_count
  
}
