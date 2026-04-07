module "my_resume_site" {
  source = "../terraform-modules/s3-with-cf"
  bucket_name         = "my-codecloudresume"
  domain_name         = "ronakgupta.in"
  hosted_zone_name    = "ronakgupta.in"
  acm_certificate_arn = "arn:aws:acm:us-east-1:300545976125:certificate/53358955-9b98-43f1-a7d0-5d118a0dde8c"
}

resource "aws_s3_object" "index" {
  bucket = module.my_resume_site.bucket_id
  key    = "index.html"
  source = "${path.module}/../CloudCV-HTML/index-space.html"
  etag   = filemd5("${path.module}/../CloudCV-HTML/index-space.html")

  content_type = "text/html"
}

## Upload all HTML resume theme variants to S3
resource "aws_s3_object" "remaining_html_files" {
  for_each = fileset("${path.module}/../CloudCV-HTML", "*.html")

  bucket       = module.my_resume_site.bucket_id
  key          = each.value
  source       = "${path.module}/../CloudCV-HTML/${each.value}"
  etag         = filemd5("${path.module}/../CloudCV-HTML/${each.value}")

  content_type = "text/html"
}