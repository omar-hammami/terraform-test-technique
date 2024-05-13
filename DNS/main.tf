resource "aws_route53_record" "app_record" {
  zone_id = var.zone_id
  name    = var.app_subdomain
  type    = "A"
  ttl     = 300
  records = [var.app_ip]
}

resource "aws_route53_record" "vpn_record" {
  zone_id = var.zone_id
  name    = var.vpn_subdomain
  type    = "A"
  ttl     = 300
  records = [var.vpn_ip]
}

resource "aws_route53_record" "gitlab_record" {
  zone_id = var.zone_id
  name    = var.gitlab_subdomain
  type    = "A"
  ttl     = 300
  records = [var.gitlab_ip]
}
