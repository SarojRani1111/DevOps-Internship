resource "aws_security_group" "web_sg" {
  name = "${local.common_name}-sg"

  dynamic "ingress" {
    for_each = var.security_group_ports

    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = local.merged_tags
}

resource "aws_instance" "web" {
  count = var.instance_count

  ami           = var.ami_id
  instance_type = var.instance_type

  monitoring = var.enable_monitoring

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  tags = merge(
    local.merged_tags,
    {
      Name = "${local.common_name}-${count.index + 1}"
    }
  )
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "terraform-day2-demo-bucket-001"

  tags = local.merged_tags
}