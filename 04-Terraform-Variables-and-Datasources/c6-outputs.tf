# Ec2 instance public ip
output "instance_publicip" {
 description = "Ec2 instance public ip" 
 value = aws_instance.mysec2vm.public_ip
}

#Ec2 instance public dns
output "instance_publicdns" {
 description = "Ec2 instance public dns" 
 value = aws_instance.mysec2vm.public_dns
}
