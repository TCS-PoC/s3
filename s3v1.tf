variable "access_key" {}
variable "secret_key" {}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket1" {
  versioning {
    enabled = true
  }
  tags {
    Name = "My bucket1"
  }
}
