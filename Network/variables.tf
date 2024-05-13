variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "subnet_cidrs" {
  description = "List of CIDR blocks for each subnet."
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones in which to create subnets."
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Whether resources in these subnets can have public IP addresses."
  type        = bool
  default     = false
}
