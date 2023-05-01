resource "aws_vpc" "main" {
  cidr_block       = var.cidr
  instance_tenancy = "default"

  tags = merge(var.tags,{
    Name = "timeings"
  })
}
resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_sub_cidr

  tags =   merge(var.tags,{
    Name = "pub_sub"
  })
}
resource "aws_subnet" "pra_sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pra_sub_cidr

   tags = merge(var.tags,{
    Name = "pra_sub"
  })
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

   tags = merge(var.tags,{
    Name = "igw"
  })
}
resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.internet_cidr
    gateway_id = aws_internet_gateway.igw.id
  }

 
   tags = merge(var.tags,{
    Name = "routtable"
  })
}
resource "aws_eip" "lb" {
  
}
/* resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.pub_sub.id

  tags = {
    Name = "time-NAT"
  }
} */
resource "aws_route_table_association" "rta" {
  subnet_id      = aws_subnet.pub_sub.id
  route_table_id = aws_route_table.RT.id
  
}
