provider "aws" {
  version = "~> 2.0"
}

resource "aws_autoscaling_group" "symfony_scaling" {
  name = "symfony_scalling"
  stategy = "cluster"

}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
