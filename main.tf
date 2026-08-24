terraform {
  required_version = ">= 1.0"
}

resource "aws_security_group" "insecure_ssh" {
  name = "insecure-ssh"

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}