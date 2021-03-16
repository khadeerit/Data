provider "aws" {
region = "ap-south-1"
}
resource "aws_instance" "mydemo-terraform-newkey-pair"  {
  ami = "ami-08f63db601b82ff5f"
  instance_type = "t2.micro"
  key_name = "new"
  tags = {
    Name = "myterraform server"

  }
}

resource "aws_security_group" "Data" {
  name = "Data"
  description = "default VPC security group"

  # TCP access
  ingress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from anywhere
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
