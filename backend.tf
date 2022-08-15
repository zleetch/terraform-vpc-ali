locals {
  pathName      = abspath(path.root)
  dirs          = split("/", local.pathName)
  dirName       = element(dirs, length(dirs) - 1)
  workspaceName = local.dirName + terraform.workspace
}

terraform {
  required_providers {
    alicloud = {
      version = "1.173.0"
      source  = "hashicorp/alicloud"
    }
  }

  required_version = ">= 0.15.0"

  cloud {
    organization = "zleetch"
    workspaces {
      name = local.workspaceName
    }
  }
}

provider "alicloud" {
  region = "ap-southeast-5"
}