provider "aws" {
  region     = "us-east-2"
  access_key = "enter your access key"
  secret_key = "enter your secret key"
}

resource "aws_s3_bucket" "My_Bucket" {
  bucket = "s3-ec2-arun-teraformt-bucket"
  acl    = "private"

tags = {
    Name        = "My terraform bucket"
    Environment = "Dev-Env"
  }
  versioning {
    enabled = true
  }
}
