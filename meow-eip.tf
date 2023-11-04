resource "aws_eip" "contoso_eip" {
  instance = aws_instance.contoso_webapp.id
  domain   = "vpc"
}

resource "aws_eip_association" "contoso_eipa" {
  instance_id   = aws_instance.contoso_webapp.id
  allocation_id = aws_eip.contoso_eip.id
}