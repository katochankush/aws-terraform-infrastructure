# root main.tf (in ~/upskill-vpc)
module "vpc" {
  source = "./modules/vpc"

  aws_region     = var.aws_region
  vpc_cidr       = var.vpc_cidr
  azs            = var.azs
  create_nat     = var.create_nat
  tags           = var.tags
  allow_ssh_cidr = var.allow_ssh_cidr
  name_prefix    = ""   # optional, override if needed
}

# wire outputs through
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "bastion_sg_id" {
  value = module.vpc.bastion_sg_id
}
