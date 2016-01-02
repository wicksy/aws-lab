# Output

output "s3_duplicity_bucket.id" {
  value = "${aws_s3_bucket.s3_duplicity_bucket.id}"
}

output "s3_duplicity_bucket.region" {
  value = "${aws_s3_bucket.s3_duplicity_bucket.region}"
}

output "duplicity.unique_id" {
  value = "${aws_iam_user.duplicity.unique_id}"
}

output "duplicity.arn" {
  value = "${aws_iam_user.duplicity.arn}"
}
