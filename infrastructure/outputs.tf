output "photogallery_bucket_name" {
  value = aws_s3_bucket.photogallery_s3_bucket.id
}

output "photogallery_cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.photogallery_s3_distribution.id
}

output "photogallery_service_ip_address" {
  # description = "The ip address for the photogallery service"
  value       = aws_instance.photogallery-service.public_ip
}

output "vpc_id" {
  # description = "The ID of the VPC"
  value       = module.main-vpc.vpc_id
}

output "private_subnets" {
  # description = "List of IDs of private subnets"
  value       = module.main-vpc.private_subnets
}

output "public_subnets" {
  # description = "List of IDs of public subnets"
  value       = module.main-vpc.public_subnets
}

output "photogallery_securitygroup_id" {
  # description = "Security group id for the photogallery service instance"
  value       = aws_security_group.photogallery_service_securitygroup.id
}
