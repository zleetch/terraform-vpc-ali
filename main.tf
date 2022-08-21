module "testing-vpc" {
  source   = "./modules/"
  vpc_name = "testing"
  vpc_cidr = "172.16.0.0/12"
  tag = {
    Team = "devops"
  }
}