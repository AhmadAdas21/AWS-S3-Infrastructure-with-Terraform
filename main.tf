provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket_prefix = var.bucket_prefix

  tags = {
    Name        = "My-First-S3-Bucket"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
resource "aws_s3_bucket_public_access_block" "security" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
