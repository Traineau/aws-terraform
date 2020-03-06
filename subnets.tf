resource "aws_subnet" "main-public-subnet-az1" {
  vpc_id                  = "${aws_vpc.main-vpc.id}"
  availability_zone       = "eu-west-3a"
  cidr_block              = "10.0.0.0/20"
  map_public_ip_on_launch = true

  tags = {
    Name        = "HETIC_MT1 - AZ1 PUB"
    Environment = "mixed"
  }
}

resource "aws_subnet" "main-public-subnet-az2" {
  vpc_id                  = "${aws_vpc.main-vpc.id}"
  availability_zone       = "eu-west-3b"
  cidr_block              = "10.0.16.0/20"
  map_public_ip_on_launch = true

  tags = {
    Name        = "HETIC_MT1 - AZ2 PUB"
    Environment = "mixed"
  }
}

resource "aws_subnet" "main-public-subnet-az3" {
  vpc_id                  = "${aws_vpc.main-vpc.id}"
  availability_zone       = "eu-west-3c"
  cidr_block              = "10.0.32.0/20"
  map_public_ip_on_launch = true

  tags = {
    Name        = "HETIC_MT1 - AZ3 PUB"
    Environment = "mixed"
  }
}

resource "aws_route_table_association" "public-subnet-az1-rt-assoc" {
  subnet_id      = "${aws_subnet.main-public-subnet-az1.id}"
  route_table_id = "${aws.route_table.public-subnet-route-table.id}"
}

resource "aws_route_table_association" "public-subnet-az2-rt-assoc" {
  subnet_id      = "${aws_subnet.main-public-subnet-az2.id}"
  route_table_id = "${aws.route_table.public-subnet-route-table.id}"
}

resource "aws_route_table_association" "public-subnet-az3-rt-assoc" {
  subnet_id      = "${aws_subnet.main-public-subnet-az3.id}"
  route_table_id = "${aws.route_table.public-subnet-route-table.id}"
}
