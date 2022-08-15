module "testing-vpc" {
  source = "./modules/"
  vpc_name = "testing-vpc"
  vpc_cidr = "172.16.0.0/12"
}