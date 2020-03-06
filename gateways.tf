resource "aws_nat_gateway" "nat-gateway" {
  allocation_id = "${aws_eip.nat-elastic-ip.id}"
  subnet_id     = "${aws_subnet.main-public-subnet-az1.id}"
  depends_on    = ["aws_internet_gateway.internet-gw"]

  tags = {
    Name        = "HETIC_MT1 NAT GW"
    Environment = "mixed"
  }
}

resource "aws_internet_gateway" "internet-gw" {
  vpc_id = "${aws_vpc.main-vpc.id}"

  tags = {
    Name        = "HETIC_MT1 Internet GW"
    Environment = "mixed"
  }
}
