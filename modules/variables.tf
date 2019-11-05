variable "vpc_cidr" {
 description		= "The CIDR block"
 type			= string
 default		= "10.0.0.0/16"
}

variable "azs" {
 description		= "Availabitlity zones"
 type 			= "list"
 default		= ["us-east-1", "us-east-2", "us-west-1"]
}
variable "prs" {
 description		= "Private Subnets"
 type 			= "list"
 default		= ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "pus" {
 description		= "Public Subnets"
 type 			= "list"
 default		= ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

