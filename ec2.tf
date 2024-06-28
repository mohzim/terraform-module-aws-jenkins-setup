resource "aws_security_group" "webSg" {
  name   = "web"

  #Change this Port for Jenkins
  ingress {
    description = "HTTP from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #Change this port for My IP
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Web-sg"
  }
}

resource "aws_instance" "webserver1" {
  ami                    = data.aws_ssm_parameter.ami.value
  instance_type          = data.aws_ssm_parameter.instance_type.value
  vpc_security_group_ids = [aws_security_group.webSg.id]
  user_data              = base64encode(file("userdata.sh"))
  key_name = data.aws_ssm_parameter.ec2-key-name.value
}

output "webserver1-dns" {
  #value = aws_instance.webserver1.public_dns
  value = "http://${aws_instance.webserver1.public_dns}:8080"
}