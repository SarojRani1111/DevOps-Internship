resource "aws_security_group" "this" {

  count = var.sg_count

  name = "${var.prefix}-sg-${var.environment}-00${count.index + 1}"

  vpc_id = var.vpc_id

  dynamic "ingress" {

    for_each = var.ingress_rules

    content {

      from_port = ingress.value.port

      to_port = ingress.value.port

      protocol = "tcp"

      cidr_blocks = ingress.value.cidr
    }
  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.common_tags,
    {
      Name = "${var.prefix}-sg-${var.environment}-001"
    }
  )

  lifecycle {
    ignore_changes = [tags]
  }
}