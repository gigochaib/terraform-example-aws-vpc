# Setup AWS provider
provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
  shared_credentials_file = "${var.aws_secretsfile}"
}


