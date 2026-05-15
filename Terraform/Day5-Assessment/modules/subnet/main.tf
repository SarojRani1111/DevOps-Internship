resource "aws_subnet" "this" {

  for_each = var.subnets

  vpc_id = var.vpc_id

  cidr_block = each.value

  tags = merge(
    var.common_tags,
    {
      Name = "${var.prefix}-subnet-${var.environment}-${each.key}"
    }
  )

  lifecycle {
    create_before_destroy = true
  }
}