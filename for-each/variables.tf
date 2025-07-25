variable "ami-id" {
    default = "ami-0b4f379183e5706b9"
}

variable "instance-names" {
    type = map 
    default = {
        mongodb = "t3.small"
        cart = "t2.micro"
        user = "t2.micro"

    }
}


