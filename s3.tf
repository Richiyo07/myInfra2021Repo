resource "aws_s3_bucket" "my-bucket-tf-state-june-2005" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
