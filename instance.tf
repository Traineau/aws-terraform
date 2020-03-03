resource "aws_instance" "ec2_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  region = "${var.region}"
  access_key = "${var.acces_key}"
  secret_key = "${var.secret_key}"
}
