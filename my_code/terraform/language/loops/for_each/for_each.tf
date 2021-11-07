provider "aws" {
  region = "eu-west-1"
}


resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.value
}


module "scaling_module" {
  source = "./scaling_module"

  custom_tags = {
    Owner = "acs"
    DeployedBy = "terraform"
  }
}