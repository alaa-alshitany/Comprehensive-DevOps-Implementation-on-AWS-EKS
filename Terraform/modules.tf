module "network_module" {
  source = "./Network"

  region = var.region
  azs = var.azs
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
}

module "eks_module" {
  source = "./EKS"

  region = var.region
  private_subnet_ids = module.network_module.private_subnets
  security_group_ids = module.network_module.security_group_id
}