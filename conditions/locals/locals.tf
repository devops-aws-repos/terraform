# locals {
#     instance_types = var.instance-names == "mongodb" || var.instance-names == "shipping" || var.instance-names == "mysql" ? "t3.small" : "t2.micro"
# }

locals {
  instance_type = [
    for name in var.instance-names :
    name == "mongodb" || name == "shipping" || name == "mysql" ? "t3.small" : "t2.micro"
  ]
}

# locals {
#   instance_types = [
#     for name in var.instance-names :
#     contains(["mongodb", "shipping", "mysql"], name) ? "t3.small" : "t2.micro"
#   ]
# }

# locals {
#   all_names = join(",", var.instance-names)
# }