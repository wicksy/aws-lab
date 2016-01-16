variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_account_number" {}

variable "aws_region" {
  default = "eu-west-1"
}

variable "aws_ireland_region" {
  default = "eu-west-1"
}

variable "aws_frankfurt_region" {
  default = "eu-central-1"
}

variable "stack" {
  default = "wicksy"
}

variable "s3_duplicity_bucket" {
  default = "wicksy-macbook-pro"
}

variable "s3_media_bucket" {
  default = "wicksy-media"
}
