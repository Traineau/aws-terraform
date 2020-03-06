
resource "aws_route_table" "public-subnets-route-table" {
  vpc_id = "${aws_vpc.main-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet-gw.id}"
  }

  tags = {
    Name        = "HETIC_MT1 Public Subnets RT"
    Environment = "mixed"
  }
}

resource "aws_route_table" "private-subnets-route-table" {
  vpc_id = "${aws_vpc.main-vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat-gateway.id}"
  }

  tags = {
    Name        = "HETIC_MT1 Private Subnets RT"
    Environment = "mixed"
  }
}
