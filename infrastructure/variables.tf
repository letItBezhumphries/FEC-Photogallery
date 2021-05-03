variable "AWS_REGION" {
  type        = string
  description = "The aws region resources will be built"
  default     = "us-west-2"
}

variable "prefix" {
  default = "brokentable-photogallery"
}

variable "project" {
  default = "fec-brokentable-photogallery"
}

# variable "port" {}

# variable "host" {}


variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}