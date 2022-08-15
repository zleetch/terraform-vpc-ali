variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "tag" {
  type = object({
    Team = string
  })
}