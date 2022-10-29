# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

#configure S3 backend for terraform state file.
terraform {
  backend "s3" {
    bucket = "terraform-swattc-bucket"
    key    = "terraform-swattc-bucket"
    profile = "terraform-user"
    region = "us-east-1"
  }
}
