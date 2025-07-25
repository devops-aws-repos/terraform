resource "aws_instance" "web" {
  ami           = var.ami-id
  # count = 11 # count.index is a special character by terraform
  count = length(var.instance-names)
  instance_type = local.instance_type[count.index]
  #vpc_security_group_ids = [data.aws_security_group.allow-all.id]
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name        = var.instance-names[count.index]  # ✅ Unique name per instance
    Project     = "Roboshop"
    Environment = "DEV"
    Component   = "Web"
  }
}

#data "aws_security_group" "allow-all" {
#  id ="sg-050ef4889bc4a5a82"
#}

resource "aws_security_group" "web_sg" { #this is for terraform reference
  name        = var.sg-name # this is for aws reference
  description = var.sg-description
  #vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "Allowing all ports"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr-blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-sg-aws"
  }
}