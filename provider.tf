terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "upskill-terraform-state-ak-2025"     # <- change if needed
    key            = "upskill-vpc/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "upskill-terraform-locks"            # <- change if needed
  }
}

provider "aws" {
  region = var.aws_region
}
