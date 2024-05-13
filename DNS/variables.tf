variable "zone_id" {
  description = "The hosted zone ID to contain the DNS records"
  type        = string
}

variable "app_subdomain" {
  description = "Subdomain for the application"
  type        = string
}

variable "app_ip" {
  description = "The IP address for the application"
  type        = string
}

variable "vpn_subdomain" {
  description = "Subdomain for the VPN service"
  type        = string
}

variable "vpn_ip" {
  description = "The IP address for the VPN service"
  type        = string
}

variable "gitlab_subdomain" {
  description = "Subdomain for the GitLab service"
  type        =
