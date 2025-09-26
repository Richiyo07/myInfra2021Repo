terraform {
  backend "s3" {
    bucket = "my-yohyoh-s3-bucket-2"
    key = "main"
    region = "us-east-2"
    dynamodb_table = "my-yoh-Dyna-table"
  }
}
