variable "access_key" {}
variable "secret_key" {}
variable "region" {}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-1234567890"
  acl = "private"

  tags {
    Name = "My bucket"
    Environment = "Dev"
  }
}
