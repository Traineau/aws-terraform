resource "aws_security_group" "bastion-allow-ssh" {
  name        = "allow-ssh-bastion"
  description = "Allow SSH inbound traffic towards bastion instance"
  vpc_id      = "${aws_vpc.main-vpc.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "HETIC_MT1 Bastion Allow SSH"
    Environment = "mixed"
  }
}
