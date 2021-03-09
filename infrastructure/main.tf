provider "aws" {
  region = var.AWS_REGION
}

terraform {
  backend "s3" {
    bucket  = "fec-brokentable-tfstate"
    region  = "us-west-2"
    key     = "modules/photogallery.tfstate"
    encrypt = true
  }
}

# locals to attach to resources
# workspace will be either - develop, staging, master
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManagedBy   = "Terraform"
    Owner       = "Eric Humphries"
  }
}

