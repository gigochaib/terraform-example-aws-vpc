/*
* aws vars for Terraform
*/
terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config {
      encrypt = "true"
      bucket  = "example-com-example-dev-terraform"
      key     = "aws_vpc.tfstate"
      region  = "us-east-1"
    }
  }
}

aws_profile = "example-dev"     # AWS credentials profile name
aws_account = "example-dev"     # AWS account name
aws_region  = "us-east-1"
aws_availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

# VPC
vpc_cidr_block      = "10.1.0.0/16"
vpc_private_subnets = ["10.1.0.0/20", "10.1.16.0/20", "10.1.32.0/20"]
vpc_public_subnets  = ["10.1.255.0/26", "10.1.255.64/26", "10.1.255.128/26"]

private_subnets_allow_all = false
public_subnets_allow_all = false
