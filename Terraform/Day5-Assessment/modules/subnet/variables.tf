variable "subnets" {
  type = map(string)
}

variable "vpc_id" {
  type = string
}

variable "prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "common_tags" {
  type = map(string)
}