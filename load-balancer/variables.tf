variable "subnet_ids" {
  description = "List of subnet IDs to attach to the ALB"
  type        = list(string)
}

variable "security_group_id" {
  description = "The ID of the security group attached to the ALB"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the SSL certificate for the HTTPS listener"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the target groups and ALB are placed"
  type        = string
}
