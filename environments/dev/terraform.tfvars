aws_region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
azs = ["us-east-1a","us-east-1b"]
create_nat = false
tags = {
  Owner = "DevOps-Project"
  Project = "vpc-lab-dev"
  Environment = "dev"
}
# IMPORTANT: Replace with your actual admin IP before deployment
allow_ssh_cidr = "203.0.113.50/32"
