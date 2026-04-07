terraform {
  backend "s3" {
    bucket         = "ronak-tf-state-bucket"
    key            = "CodeCloudResume/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}