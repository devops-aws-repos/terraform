resource "aws_instance" "data" {
    ami = data.aws_ami.centos8.id
    instance_type = "t2.micro"
    vpc_security_group_ids = [data.aws_security_group.roboshop-all.id]

    tags = {
        Name = "data source"
    }
}

# data "aws_security_group" "roboshop-all" {
#     id = "sg-01466798b8b460f59"
# }