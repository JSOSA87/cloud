resource "aws_security_group" "inalambricas" {
  name        = "inalambricas"
  vpc_id      = "vpc-52ab542f"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "inalambricas"
  }
}