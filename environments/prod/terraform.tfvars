aws_region = "us-east-1"
vpc_cidr = "10.2.0.0/16"
azs = ["us-east-1a","us-east-1b"]
create_nat = true
tags = {
  Owner = "DevOps-Project"
  Project = "vpc-lab-prod"
  Environment = "prod"
}
# IMPORTANT: Replace with your actual admin IP before deployment
allow_ssh_cidr = "203.0.113.50/32"
