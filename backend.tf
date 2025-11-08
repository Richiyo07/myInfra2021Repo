terraform {
  backend "s3" {
    bucket = "my-aws-s3-bucket-rich"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamo-db-table-tf-rd"
  }
}
