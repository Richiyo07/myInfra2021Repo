terraform {
  backend "s3" {
    bucket = "my-s3-bucket-for-tf-state"
    key = "main"
    region = "us-west-1"
    dynamodb_table = "my_Dynamo-tab-tf"
  }
}
