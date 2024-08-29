locals {
  env    = "dev"
  region = "us-east-1"
  zone1  = "us-east-1a"
  zone2  = "us-east-1b"
  # EKS
  eks_name    = "main"
  eks_version = "1.27"
  #EC2
  ami_type           = "ami-0e86e20dae9224db8"
  instance = "t2.medium"
  key     = "MyShhKey"
  volume   = 25
  ebs_type   = "gp2"  
}