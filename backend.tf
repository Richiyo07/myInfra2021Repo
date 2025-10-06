terraform {
  backend "s3" {
    bucket = "my-bucket-tf-state-june-2005"
    key = "main"
    region = "us-east-2"
    dynamodb_table = "my-dynamo-db-table"
  }
}
