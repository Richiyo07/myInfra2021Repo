terraform {
  backend "s3" {
    bucket = "my-aws-s3-bucket-rich"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamo-2025-table"
  }
}
