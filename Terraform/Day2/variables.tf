variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "enable_monitoring" {
  type    = bool
  default = true
}

variable "security_group_ports" {
  type = list(number)

  default = [22, 80, 443]
}

variable "common_tags" {
  type = map(string)

  default = {
    Environment = "Dev"
    Owner       = "Saroj"
  }
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "ami_id" {
  type = string
}