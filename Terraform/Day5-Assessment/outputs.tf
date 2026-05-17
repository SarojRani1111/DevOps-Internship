output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.subnet.subnet_ids
}

output "security_group_ids" {
  value = module.sg.sg_ids
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "s3_bucket_names" {
  value = module.s3.bucket_names
}