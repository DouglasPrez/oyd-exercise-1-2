terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 5.0"
   }
 }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "main" {
    bucket = "myapp-dev-uploads"
    tags = {
    Environment = "dev"
    Project     = "myapp"
    ManagedBy   = "terraform"
    }
}


output "bucket_name" {
    value = aws_s3_bucket.main.bucket
}


output "bucket_arn" { 
    value = aws_s3_bucket.main.arn
}
