provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"
  tags   = {
    Name = "SREExerciseSinglePageBucket"
  }
}