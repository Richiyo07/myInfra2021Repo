# Configure the AWS provider
provider "aws" {
  region = "us-east-1" # Specify your desired AWS region
}

# Define an S3 bucket resource
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345" # Replace with a globally unique name
  acl    = "private"                       # Set access control list (e.g., private, public-read)

  tags = {
    Name        = "MyApplicationBucket"
    Environment = "Development"
  }
}
