locals {
  workspace    = terraform.workspace
  workspaceEnv = split("-", local.workspace)
  env          = element(local.workspaceEnv, length(local.workspaceEnv) - 1)
  vpc_name     = "vpc-${var.vpc_name}-${local.env}"
  tags         = merge({ Env = local.env, Runby = "terraform" }, var.tag)
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = local.vpc_name
  cidr_block = var.vpc_cidr
  tags       = merge({ Name = local.vpc_name }, local.tags)
}