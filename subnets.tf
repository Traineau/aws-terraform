resource "aws_subnet" "main_subnet" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  availability_zone       = "${var.region}"
  cidr_block              = "10.0.0.0/20"
  map_public_ip_on_launch = true

}
