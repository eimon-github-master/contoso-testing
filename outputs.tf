output "contoso-testing-terraform-role-devops-role-id" {
  value = resource.aws_iam_role.contoso-testing-terraform-role-devops.id
}

# output "contoso-testing-terraform-role-devops-role-id" {
#   value = resource.aws_iam_role.bca-aws-dev-hc-dev-terraform-role-devops.id
# }

# output "contoso-testing-terraform-role-devops-role-id" {
#   value = resource.aws_iam_role.bca-aws-master-terraform-role-devops.id
# }
# Outputs file
output "meow_app_dns" {
  value = "http://${aws_eip.contoso_eip.public_dns}"
}

output "meow_app_ip" {
  value = "http://${aws_eip.contoso_eip.public_ip}"
}
