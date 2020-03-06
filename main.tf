provider "aws" {
  access_key             = "${var.acces_key}"
  secret_key             = "${var.secret_key}"
  region                 = "${var.aws_region}"
  skip_region_validation = true
}

terraform {
  backend "s3" {
    bucket = "hetic-tf-state"
    key    = "main-vpc.tfstate"
    region = "eu-west-3"
  }
}
