resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  acl {} block
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
