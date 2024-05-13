variable "vpn_domain" {
  description = "The domain name for the VPN service for which to acquire a certificate"
  type        = string
}

variable "gitlab_domain" {
  description = "The domain name for the GitLab service for which to acquire a certificate"
  type        = string
}

variable "shared_domain" {
  description = "The domain name for shared services for which to acquire a certificate"
  type        = string
}