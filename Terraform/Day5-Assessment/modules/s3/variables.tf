variable "bucket_count" {
  type = number
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