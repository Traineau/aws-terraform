resource "aws_autoscaling_group" "symfony_scaling" {
  availability_zones = "${var.region}"
  name               = "symfony_scalling"
  stategy            = "cluster"
  min_size           = "1"
  max_size           = "5"

  launch_template {
    id      = "${aws_launch_template.app-instance.id}"
    version = "$Latest"
  }
}
