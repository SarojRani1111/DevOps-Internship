locals {

  common_tags = {
    managedBy      = "Saroj"
    deploymentMode = "terraform"
  }

  vpc_name = "${var.prefix}-vpc-${var.environment}-001"

  sg_name = "${var.prefix}-sg-${var.environment}-001"

  ec2_name = "${var.prefix}-ec2-${var.environment}-001"

  s3_name = "${var.prefix}-s3-${var.environment}-001"
}