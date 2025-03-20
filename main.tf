module "network" {
  source   = "./modules/network"
  vpc      = var.vpc
  subnet   = var.subnet
  firewall = var.firewall
}