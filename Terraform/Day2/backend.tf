terraform {
  backend "s3" {
    bucket         = "saroj-terraform-state-bucket-2026"
    key            = "day2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}