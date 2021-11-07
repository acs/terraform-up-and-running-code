provider "aws" {
  region = "eu-west-1"
}


resource "aws_iam_user" "example" {
  for_each = toset(var.names)
  name     = each.value
}