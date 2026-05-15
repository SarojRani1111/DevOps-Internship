resource "aws_instance" "this" {

  count = var.instance_count

  ami = var.ami

  instance_type = var.instance_type

  subnet_id = var.subnet_id

  vpc_security_group_ids = var.sg_ids

  tags = merge(
    var.common_tags,
    {
      Name = "${var.prefix}-ec2-${var.environment}-00${count.index + 1}"
    }
  )

  lifecycle {
    create_before_destroy = true
  }
}