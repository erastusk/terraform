#Using terraform registry module - vpc
provider "aws" {
 region = "us-east-1"
}

module "vpc" {
  source 	  	= "terraform-aws-modules/vpc/aws"
  name 		  	= "my-vpc"
  cidr 		  	= "${var.vpc_cidr}"
  azs		  	= "${var.azs}"
  private_subnets 	= "${var.prs}"
  public_subnets  	= "${var.pus}"
  enable_nat_gateway 	= true
  enable_vpn_gateway 	= true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
