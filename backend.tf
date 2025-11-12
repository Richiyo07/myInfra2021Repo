terraform {
  backend "s3" {
    bucket = "my-demo-bucket-rich"
    key = "master"
    region = "us-east-2"
    dynamodb_table = "dyna-rich-table"
  }
}
