terraform {
  backend "s3" {
    encrypt = true
    bucket = "terraform-remote-state"
    dynamodb_table = "terraform-state-lock"
    region = "us-west-2"
    key = "terraform.tfstate"
  }
}