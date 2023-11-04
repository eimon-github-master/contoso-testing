resource "aws_internet_gateway" "contoso_igw" {
  vpc_id = aws_vpc.contoso_vpc.id

  tags = {
    Name = "${var.prefix}-internet-gateway"
  }
}

resource "aws_route_table" "contoso_rt" {
  vpc_id = aws_vpc.contoso_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.contoso_igw.id
  }
}

resource "aws_route_table_association" "contoso_rta" {
  subnet_id      = aws_subnet.contoso_subnet.id
  route_table_id = aws_route_table.contoso_rt.id
}