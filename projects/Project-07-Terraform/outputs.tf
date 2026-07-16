output "bucket_name" {
  value = aws_s3_bucket.website_bucket.id
}

output "bucket_website_endpoint" {
  value = aws_s3_bucket.website_bucket.bucket_regional_domain_name
}
