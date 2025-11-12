terraform {
  backend "s3" {
    bucket = "my-aws-s3-bucket-yohyoh"
    key = "master"
    region = "us-east-2"
    dynamodb_table = "my-dynamo-db-table-tf-kd"
  }
}
