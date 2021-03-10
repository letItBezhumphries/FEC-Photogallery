output "photogallery_bucket_name" {
  value = aws_s3_bucket.photogallery_s3_bucket.id
}

output "photogallery_cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.photogallery_s3_distribution.id
}

output "photogallery_service_ip_address" {
  value = aws_instance.photogallery-service.public_ip
}

output "vpc_id" {
  value = module.main-vpc.vpc_id
}

output "private_subnets" {
  value = module.main-vpc.private_subnets
}

output "public_subnets" {
  value = module.main-vpc.public_subnets
}

output "photogallery_securitygroup_id" {
  value = aws_security_group.photogallery_service_securitygroup.id
}
