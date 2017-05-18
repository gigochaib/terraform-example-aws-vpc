/*
* Define our global vars and any other setup elements.
*/
variable "aws_secretsfile" {}
variable "aws_profile" {}

variable "aws_account" {}

variable "aws_region" {}

# FIXME: Would like to replace this with a query if we could also limit the
# length of the list.  Wanted to just use the first three AZs of the region.
variable "aws_availability_zones" { type = "list" }


// VPC setup
variable "vpc_cidr_block" {
  type = "string"
  description = "CIDR block fro public VPC"
}

variable "vpc_private_subnets" {
  type = "list"
  description = "List of subnet CIDR blocks. Should be as many as there ar AZs used."
}

variable "vpc_public_subnets" {
  type = "list"
  description = "List of subnet CIDR blocks. NAT gateways will live here with path to internet gateway"
}

variable "private_subnets_allow_all" {
  description = "Whether to allow all traffic to all hosts inside the private subnets"
}

variable "public_subnets_allow_all" {
  description = "Whether to allow all traffic to all hosts inside the public subnets"
}

