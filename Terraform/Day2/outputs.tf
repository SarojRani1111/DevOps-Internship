output "instance_public_ips" {
  value = aws_instance.web[*].public_ip
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}

output "bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}

output "db_password_output" {
  value     = var.db_password
  sensitive = true
}