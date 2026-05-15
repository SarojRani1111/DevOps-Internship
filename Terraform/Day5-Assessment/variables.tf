variable "aws_region" {
  type = string
}

variable "prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_cidrs" {
  type = map(string)
}

variable "subnets" {
  type = map(string)
}