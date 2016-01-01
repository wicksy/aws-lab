# Templates

resource "template_file" "s3_duplicity_bucket" {
  template = "templates/s3_duplicity_bucket.tpl"
  vars {
    bucket_name = "${var.s3_duplicity_bucket}"
  }
}

resource "template_file" "ec2_restricted_instances" {
  template = "templates/ec2_restricted_instances.tpl"
  vars {
    aws_region = "${var.aws_region}"
    aws_account_number = "${var.aws_account_number}"
  }
}

resource "template_file" "sts_allow_decode" {
  template = "templates/sts_allow_decode.tpl"
}
