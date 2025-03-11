output "bucket_name" {
  value       = aws_s3_bucket.s3_backend.id
  description = "name of the bucket"
  sensitive   = false
}

output "bucket_arn" {
  value       = aws_s3_bucket.s3_backend.arn
  description = "arn of the bucket"
  sensitive   = false
}

output "encrypted_secret" {
  value       = aws_iam_access_key.tf-s3-state-handler-access-key.encrypted_secret
  description = "encrypted secret"
}

output "access_key" {
  value       = aws_iam_access_key.tf-s3-state-handler-access-key.id
  description = "access key"
  sensitive   = false
}