# Utilisation du module Network
module "network" {
  source = "./modules/network"
  vpc_cidr   = "10.0.0.0/16"
  subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  map_public_ip_on_launch = true
  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

# Utilisation du module Load Balancer
module "load_balancer" {
  source           = "./modules/load-balancer"
  subnet_ids       = module.network.subnet_ids
  security_group_id = module.network.security_group_id
  certificate_arn   = module.certificates.ssl_certificate_arn
  vpc_id           = module.network.vpc_id
}

# Utilisation du module DNS
module "dns" {
  source = "./modules/dns"
  zone_id = "Z2K1234567890"
  app_subdomain = "app.example.com"
  app_ip = module.load_balancer.alb_ip
}

# Utilisation du module Certificates
module "certificates" {
  source = "./modules/certificates"
  vpn_domain    = "vpn.example.com"
  gitlab_domain = "gitlab.example.com"
}
