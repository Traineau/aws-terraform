resource "aws_instance" "bastion" {
  ami                    = "ami-03b4b78aae82b30f1" # Amazon Linux 2 AMI for EU-WEST-3
  instance_type          = "t2.micro"
  key_name               = "${var.bastion_key_name}"
  vpc_security_group_ids = ["aws_security_group.bastion-allow-ssh.id"]
  monitoring             = true
  subnet_id              = "${aws_subnet.main-public-subnet-az1.id}"

  connection {
    type        = "ssh"
    host        = "${aws_instance.bastion.public_ip}"
    user        = "ec2-user"
    private_key = file(var.bastion_local_key_path)
  }

  provisioner "remote-exec" {
    inline = [
      "sudo sed -i s/#AllowTcpForwarding.*/AllowTcpForwarding\\ yes/ /etc/ssh/sshd_config",
      "sudo service sshd reload"
    ]
  }

  tags = {
    Name        = "HETIC_MT1 Bastion"
    Environment = "mixed"
  }
}

resource "aws_instance" "app-instance" {
  ami           = "ami-03b4b78aae82b30f1" # Amazon Linux 2 AMI for EU-WEST-3
  instance_type = "t2.micro"
}
