# Output

output "s3_duplicity_bucket.id" {
  value = "${aws_s3_bucket.s3_duplicity_bucket.id}"
}

output "s3_duplicity_bucket.region" {
  value = "${aws_s3_bucket.s3_duplicity_bucket.region}"
}

