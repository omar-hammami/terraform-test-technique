variable "vpc_id" {}
variable "subnet_cidrs" { type = list(string) }

resource "aws_subnet" "subnet" {
  count      = length(var.subnet_cidrs)
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidrs[count.index]
  tags       = { Name = "Subnet-${count.index + 1}" }
}
