output "photogallery_bucket_name" {
  value = aws_s3_bucket.photogallery_s3_bucket.id
}

output "photogallery_cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.photogallery_s3_distribution.id
}

