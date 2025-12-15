variable "aws_region" { type = string }
variable "vpc_cidr" { type = string }
variable "azs" { type = list(string) }
variable "create_nat" { type = bool }
variable "tags" { type = map(string) }
variable "allow_ssh_cidr" { type = string }
