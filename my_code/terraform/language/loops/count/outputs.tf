output "neo_arn" {
  value       = aws_iam_user.example[0].arn
  description = "The ARN for user Neo"
}

output "all_users_arn" {
  value       = aws_iam_user.example[*].arn
  description = "The ARN for all users"
}