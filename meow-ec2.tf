data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    #values = ["ubuntu/images/hvm-ssd/ubuntu-disco-19.04-amd64-server-*"]
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
resource "aws_instance" "contoso_webapp" {
  depends_on = [ 
    aws_key_pair.contoso_keypair
  ]
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.contoso_keypair.key_name
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.contoso_subnet.id
  vpc_security_group_ids      = [aws_security_group.contoso_testing_sg.id]

  tags = {
    Name = "${var.prefix}-contoso-webapp"
  }
}