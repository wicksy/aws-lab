# IAM Objects

# Users

resource "aws_iam_user" "duplicity" {
  provider = "aws.ireland"
  name = "duplicity"
}

resource "aws_iam_user" "media" {
  provider = "aws.ireland"
  name = "media"
}

resource "aws_iam_user" "wicksycv" {
  provider = "aws.ireland"
  name = "wicksycv"
}

resource "aws_iam_user" "ec2" {
  provider = "aws.ireland"
  name = "ec2"
}

resource "aws_iam_user_policy" "duplicity" {
  provider = "aws.ireland"
  name = "AllowFullDuplicityBucket"
  user = "${aws_iam_user.duplicity.name}"
  policy = "${template_file.s3_duplicity_bucket.rendered}"
}

resource "aws_iam_user_policy" "sts" {
  provider = "aws.ireland"
  name = "AllowStsDecodeMessage"
  user = "${aws_iam_user.duplicity.name}"
  policy = "${template_file.sts_allow_decode.rendered}"
}

resource "aws_iam_user_policy" "ec2" {
  provider = "aws.ireland"
  name = "AllowLimitedEc2"
  user = "${aws_iam_user.ec2.name}"
  policy = "${template_file.ec2_restricted_instances.rendered}"
}

resource "aws_iam_user_policy" "media" {
  provider = "aws.ireland"
  name = "AllowFullMediaBucket"
  user = "${aws_iam_user.media.name}"
  policy = "${template_file.s3_media_bucket.rendered}"
}

resource "aws_iam_user_policy" "wicksycv" {
  provider = "aws.ireland"
  name = "AllowFullWicksyCVBucket"
  user = "${aws_iam_user.wicksycv.name}"
  policy = "${template_file.s3_wicksycv_bucket.rendered}"
}

