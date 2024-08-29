#Create provider
provider "aws" {
  region = local.region
}

terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket         = "terraform-state-eks-dev"
    key            = "dev/eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb-terraform-state-lock-dev"
    encrypt        = true
  }
}