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
    Owner = "DevOps-Project"
    Project = "aws-infrastructure"
  }
}

variable "allow_ssh_cidr" {
  type        = string
  description = "CIDR allowed to SSH to bastion - REPLACE with your IP before deployment"
  default     = "203.0.113.50/32"  # Example IP - Update before use
}
