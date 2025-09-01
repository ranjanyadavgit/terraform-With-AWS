resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "DEV VPC SSH"
  

  tags = {
    Name = "vpc-ssh"
  }

  ingress {

     description = "allow port from 22"
     from_port = 22
     to_port = 22
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    description = "allow all ip and port outbound"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}

resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "DEV VPC WEB"

  tags = {
    Name = "vpc-web"
  }

  ingress {

     description = "allow port from 22"
     from_port = 22
     to_port = 22
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]

  }

   ingress {

     description = "allow port from 80"
     from_port = 80
     to_port = 80
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    description = "allow all ip and port outbound"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}
