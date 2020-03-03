provider "aws" {
  version = "~> 2.0"
}

resource "aws_autoscaling_group" "symfony_scaling" {
  name = "symfony_scalling"
  stategy = "cluster"
}


