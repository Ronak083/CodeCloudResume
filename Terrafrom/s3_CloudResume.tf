module "my_s3_bucket" {
  source = "/Users/rgupta/workspace/repos/terraform-modules/s3"

  bucket_name                  = "codecloudresume"
  cloudfront_distribution_arns = [
    "arn:aws:cloudfront::300545976125:distribution/E1A2B3C4D5E6F7"
  ]
}
