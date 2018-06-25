terraform {}

provider "aws" {
  version = "~> 1.16"
}

resource "aws_s3_bucket" "tf-state-store" {
  bucket = "${var.namespace}-tfstate-store"
  acl    = "private"

  versioning {
    enabled = true
  }

  logging {
    target_bucket = "${aws_s3_bucket.logs.id}"
    target_prefix = "log/"
  }
}

resource "aws_s3_bucket" "logs" {
  bucket = "${var.namespace}-tfstate-logs"
  acl    = "log-delivery-write"
}
