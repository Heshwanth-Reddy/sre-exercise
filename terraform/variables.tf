variable "aws_region" {
  description = "AWS region where the S3 bucket is created"
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket for the web application"
}