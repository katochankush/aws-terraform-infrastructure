variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
  description = "Primary VPC CIDR"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
  description = "List of AZs to use (2 recommended for HA)"
}

variable "public_subnet_suffix" {
  type    = string
  default = "public"
}

variable "private_subnet_suffix" {
  type    = string
  default = "private"
}

variable "create_nat" {
  type    = bool
  default = false
  description = "Create a NAT Gateway for private subnets (may cost money). Default false for lab."
}

variable "tags" {
  type    = map(string)
  default = {
    Owner = "upskill"
    Project = "vpc-lab"
  }
}

variable "allow_ssh_cidr" {
  type        = string
  description = "CIDR allowed to SSH to bastion (set to your-ip/32)"
  default     = "122.177.241.118/32"
}

