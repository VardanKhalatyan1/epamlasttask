terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
  access_key = "AKIA4RCRPJ6QMM25DFHG"
  secret_key = "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"
}

resource "aws_instance" "server1" {
  ami           = "ami-0fd8802f94ed1c969"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.server1.id}"]
  subnet_id = aws_subnet.my_subnet.id
  user_data = <<EOF
#!/bin/bash
echo "Someshit!!!"
  EOF

  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
    Name = "server1"
  }
}

resource "aws_instance" "server2" {
  ami           = "ami-0fd8802f94ed1c969"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.server2.id}"]
  subnet_id = aws_subnet.my_subnet.id
  user_data = <<EOF
#!/bin/bash
echo "Someshit!!!"

  EOF

  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
    Name = "server2"
  }
}

resource "aws_instance" "server3" {
  ami           = "ami-0fd8802f94ed1c969"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.server3.id}"]
  subnet_id = aws_subnet.my_subnet.id
  user_data = <<EOF
#!/bin/bash
echo "Someshit!!!"

  EOF

  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
    Name = "server3"
  }
}

resource "aws_instance" "server4" {
  ami           = "ami-0fd8802f94ed1c969"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.server4.id}"]
  subnet_id = aws_subnet.my_subnet.id
  user_data = <<EOF
#!/bin/bash
echo "Someshit!!!"

  EOF

  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
    Name = "server4"
  }
}
