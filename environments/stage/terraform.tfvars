aws_region = "us-east-1"
vpc_cidr   = "10.1.0.0/16"
azs       = ["us-east-1a","us-east-1b"]
create_nat = false
tags = {
  Owner = "upskill"
  Project = "vpc-lab-stage"
  Environment = "stage"
}
allow_ssh_cidr = "122.177.241.118/32"   # change if different office/IP
