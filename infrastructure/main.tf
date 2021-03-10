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


# aws ec2 instance that will serve the photogallery service
resource "aws_instance" "photogallery-service" {
  ami                    = var.AMI_ID
  instance_type          = var.INSTANCE_TYPE
  # the VPC subnet
  subnet_id              = element(module.main-vpc.public_subnets, 0)
  # the security group
  vpc_security_group_ids = [aws_security_group.photogallery_service_securitygroup.id]
  # the public SSH key
  key_name               = aws_key_pair.mykeypair.key_name
  tags                   = local.common_tags
}