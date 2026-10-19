variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "Development"
}

variable "bucket_prefix" {
  description = "S3 bucket name prefix"
  type        = string
  default     = "terraform-s3-learning-"
}