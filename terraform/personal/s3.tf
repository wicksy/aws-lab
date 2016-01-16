# S3 Objects

# Buckets

resource "aws_s3_bucket" "s3_duplicity_bucket" {
  provider = "aws.ireland"
  bucket = "${var.s3_duplicity_bucket}"
  acl = "private"
  tags {
    Name = "${var.s3_duplicity_bucket}"
    Stack = "${var.stack}"
    Project = "personal"
  }
}

resource "aws_s3_bucket" "s3_media_bucket" {
  provider = "aws.ireland"
  bucket = "${var.s3_media_bucket}"
  acl = "private"
  tags {
    Name = "${var.s3_media_bucket}"
    Stack = "${var.stack}"
    Project = "personal"
  }
}
