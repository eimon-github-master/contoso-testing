resource "tls_private_key" "contoso_private_key" {
  algorithm = "ED25519"
}

locals {
  private_key_filename = "${var.prefix}-ssh-key.pem"
}

resource "aws_key_pair" "contoso_keypair" {
  key_name   = local.private_key_filename
  public_key = tls_private_key.contoso_private_key.public_key_openssh
}