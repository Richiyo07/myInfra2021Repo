terraform {
  backend "s3" {
    bucket = "myaws-buck"
    key = "main"
    region = "us-west-2"
    dynamodb_table = "my_Dynamo-tab-tf"
  }
}
