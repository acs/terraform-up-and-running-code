output "all_users_map" {
  value = aws_iam_user.example
}

output "all_users_arns" {
  value = values(aws_iam_user.example)[*].arn
}