variable "ami-id" {
    default = "ami-0b4f379183e5706b9"
}

variable "instance-type" {
    default = "t2.micro"
}

variable "sg-name" {
    default = "web-sg-aws"
}

variable "sg-description" {
    default = "Allowing all traffic"
}

variable "cidr-blocks" {
    default = ["0.0.0.0/0"]
}

variable "tags" {
    default = {
        Name = "Hello Terraform"
        Project = "Roboshop"
        Environment = "DEV"
        Component = "Web"
    }
}
