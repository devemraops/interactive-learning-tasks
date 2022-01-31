output "bobs_arn" {
    value = aws_iam_user.user1.arn
}

output "unique_id" {
    value = aws_iam_user.user1.unique_id
}