resource "aws_s3_bucket" "this" {

  count = var.bucket_count

  bucket = lower("${var.prefix}-s3-${var.environment}-00${count.index + 1}")

  tags = merge(
    var.common_tags,
    {
      Name = "${var.prefix}-s3-${var.environment}-00${count.index + 1}"
    }
  )

  lifecycle {
    prevent_destroy = true
  }
}