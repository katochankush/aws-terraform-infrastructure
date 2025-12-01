aws_region = "us-east-1"
vpc_cidr   = "10.2.0.0/16"
azs       = ["us-east-1a","us-east-1b"]
create_nat = true
tags = {
  Owner = "upskill"
  Project = "vpc-lab-prod"
  Environment = "prod"
}
# set prod SSH CIDR carefully (ops team/public IP or VPN CIDR)
allow_ssh_cidr = "122.177.241.118/32"
