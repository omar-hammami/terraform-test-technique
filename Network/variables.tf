variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.0.0.0/16"
}

variable "subnets_cidr" {
  description = "List of subnet CIDRs"
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Boolean to enable/disable public IP on launch"
  type        = bool
  default     = false
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}
