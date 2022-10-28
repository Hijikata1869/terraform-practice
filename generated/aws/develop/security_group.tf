resource "aws_security_group" "tfer--terraform-practice-sg_sg-07352efc0ddfdbaac" {
  description = "terraform-practice-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "terraform-practice-sg"

  tags = {
    Environment = "dev"
  }

  tags_all = {
    Environment = "dev"
  }

  vpc_id = "vpc-08e88d8ab7869b450"
}
