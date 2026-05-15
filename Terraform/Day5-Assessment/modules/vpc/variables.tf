variable "vpc_cidrs" {
  type = map(string)
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