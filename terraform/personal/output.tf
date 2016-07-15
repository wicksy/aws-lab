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

output "s3_wicksycv_bucket.id" {
  value = "${aws_s3_bucket.s3_wicksycv_bucket.id}"
}

output "s3_wicksycv_bucket.region" {
  value = "${aws_s3_bucket.s3_wicksycv_bucket.region}"
}

output "wicksycv.unique_id" {
  value = "${aws_iam_user.wicksycv.unique_id}"
}

output "wicksycv.arn" {
  value = "${aws_iam_user.wicksycv.arn}"
}

output "s3_media.id" {
  value = "${aws_s3_bucket.s3_media_bucket.id}"
}

output "s3_media.region" {
  value = "${aws_s3_bucket.s3_media_bucket.region}"
}

output "media.unique_id" {
  value = "${aws_iam_user.media.unique_id}"
}

output "media.arn" {
  value = "${aws_iam_user.media.arn}"
}

output "ec2.unique_id" {
  value = "${aws_iam_user.ec2.unique_id}"
}

output "ec2.arn" {
  value = "${aws_iam_user.ec2.arn}"
}
