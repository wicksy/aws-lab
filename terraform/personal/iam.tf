# IAM Objects

# Users

resource "aws_iam_user" "duplicity" {
  provider = "aws.ireland"
  name = "duplicity"
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

