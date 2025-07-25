resource "aws_instance" "web" {
  ami           = var.ami-id
  for_each = var.instance-names
  instance_type = each.value
  vpc_security_group_ids = [data.aws_security_group.roboshop-all.id]

  tags = {
    Name = each.key
  }
}

data "aws_security_group" "roboshop-all" {
 id ="sg-01466798b8b460f59"
}

output "instance_info" {
  value = aws_instance.web
}
