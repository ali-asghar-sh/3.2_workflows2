provider "aws" {
  region = "ap-southeast-1"
}
terraform {
  required_version = ">= 1.0"
}
terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "ali-ce10-bucket" #Change this
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix = "ali-ce10-bucket" # Set your bucket name here
}
