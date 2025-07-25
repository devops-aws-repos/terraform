data "aws_ami" "centos8"{
   most_recent = true
    owners = ["973714476881"]
 
    filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

}

data "aws_security_group" "roboshop-all" {
    id = "sg-01466798b8b460f59"
}

data "aws_ami" "aws-linux-2"{
   most_recent = true
    owners = ["amazon"]
 
    filter {
        name   = "name"
        values = ["al2023-ami-2023.8.20250715.0-kernel-6.12-*"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

}