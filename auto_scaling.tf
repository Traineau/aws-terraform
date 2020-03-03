resource "aws_autoscaling_group" "symfony_scaling" {
  name     = "symfony_scalling"
  stategy  = "cluster"
  min_size = "2"
  max_size = "5"
}