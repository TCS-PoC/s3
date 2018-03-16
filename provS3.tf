provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl = "private"

  tags {
    Name = "My bucket"
    Environment = "Dev"
  }
}
