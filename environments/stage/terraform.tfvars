aws_region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
azs = ["us-east-1a","us-east-1b"]
create_nat = false
tags = {
  Owner = "upskill"
  Project = "vpc-lab-dev"
}
# set your IP already in root variables but you can override here if needed
allow_ssh_cidr = "122.177.241.118/32"
