output "ami_id" {
    value = data.aws_ami.centos8.id
}

output "aws-ami-id" {
    value = data.aws_ami.aws-linux-2.id
}