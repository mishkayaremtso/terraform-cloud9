resource "aws_vpc" "cloud9_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    name = "Cloud9-VPC"
    Module_name = "cloud9_environment"
  }
}

resource "aws_subnet" "cloud9_private_subnet" {
  cidr_block = var.private_subnet_cidr
  vpc_id     = aws_vpc.cloud9_vpc.id
  
  tags = {
    name = "Cloud9-private-subnet"
    Module_name = "cloud9_environment"    
  }
}

resource "aws_internet_gateway" "cloud9_internet_gateway" {
  vpc_id = aws_vpc.cloud9_vpc.id

  tags = {
    name = "Cloud9-ineternet-gateway"
    Module_name = "cloud9_environment"
  }  
}

resource "aws_route_table" "cloud9_route_table" {
  vpc_id = aws_vpc.cloud9_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloud9_internet_gateway.id
  }

  tags = {
    name = "Cloud9-route-table"
    Module_name = "cloud9_environment"
  }  
}

resource "aws_route_table_association" "cloud9_private_subnet_association" {
  subnet_id      = aws_subnet.cloud9_private_subnet.id
  route_table_id = aws_route_table.cloud9_route_table.id
}