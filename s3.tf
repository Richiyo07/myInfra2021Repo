resource "aws_s3_bucket" "my-yohyoh-s3-bucket-2" {
  bucket = "my-unique-bucket-name-12345" # Replace with a globally unique bucket name
  acl    = "private"

  tags = {
    Environment = "Development"
    Project     = "MyApplication"
  }
}
