locals {
  env      = terraform.workspace
  vpc_name = "vpc-${var.vpc_name}-${local.env}"
  tags     = merge({ Env = local.env, Runby = "terraform" }, var.tag)
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = local.vpc_name
  cidr_block = var.vpc_cidr
  tags       = merge({ Name = local.vpc_name }, local.tags)
}