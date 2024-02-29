output "s3_bucket_id" {
  value       = aws_s3_bucket.app_bucket.id
  description = "ID of the created S3 bucket"
}

output "s3_bucket_arn" {
  value       = aws_s3_bucket.app_bucket.arn
  description = "ARN of the created S3 bucket"
}