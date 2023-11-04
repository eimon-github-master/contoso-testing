resource "aws_vpc" "contoso_vpc" {
  cidr_block           = var.address_space
  enable_dns_hostnames = true

  tags = {
    name = "${var.prefix}-vpc-${var.region}"
    environment = "Testing"
  }
}

resource "aws_subnet" "contoso_subnet" {
  vpc_id     = aws_vpc.contoso_vpc.id
  cidr_block = var.subnet_prefix

  tags = {
    name = "${var.prefix}-subnet"
  }
}