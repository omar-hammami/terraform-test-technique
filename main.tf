module "subnets" {
  source      = "./modules/subnets"
  vpc_id      = aws_vpc.main.id
  subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

module "security_group" {
  source  = "./modules/security-group"
  vpc_id  = aws_vpc.main.id
}
