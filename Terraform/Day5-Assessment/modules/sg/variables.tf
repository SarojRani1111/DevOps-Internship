variable "sg_count" {
  type = number
}

variable "vpc_id" {
  type = string
}

variable "ingress_rules" {
  type = list(object({
    port = number
    cidr = list(string)
  }))
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