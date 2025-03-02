resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "customvpc"
    }
  
}
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "public"
    }
  
}
# create internet gateway
resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.vpc.id
     tags = {
      Name = "custom ig"
    }
  
}
#create route table and edit routes
resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.vpc.id
    
    route {
        gateway_id = aws_internet_gateway.ig.id
        cidr_block = "0.0.0.0/0"
    }
  
}

#subnet associtaion
resource "aws_route_table_association" "rt" {
  route_table_id = aws_route_table.rt.id
  subnet_id = aws_subnet.public.id
}

#Create securtiy group
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "TLS from ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
ingress {
    description = "TLS from ssh"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
