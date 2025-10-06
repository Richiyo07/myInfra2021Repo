resource "aws_s3_bucket" "my-yohyoh-s3-bucket-2" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
