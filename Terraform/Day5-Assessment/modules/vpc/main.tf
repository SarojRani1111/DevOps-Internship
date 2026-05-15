resource "aws_vpc" "this" {

  for_each = var.vpc_cidrs

  cidr_block = each.value

  tags = merge(
    var.common_tags,
    {
      Name = "${var.prefix}-vpc-${var.environment}-${each.key}"
    }
  )

  lifecycle {
    prevent_destroy = true
  }
}