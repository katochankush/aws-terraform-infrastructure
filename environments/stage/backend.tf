terraform {
  backend "s3" {
    bucket         = "upskill-terraform-state-ak-2025"
    key            = "environments/dev/upskill-vpc.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "upskill-terraform-locks"
  }
}
