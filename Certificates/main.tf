# Management of VPN certificates
resource "aws_acm_certificate" "vpn_certificate" {
  domain_name       = var.vpn_domain
  validation_method = "DNS"
}

# Validating VPN certificates
resource "aws_acm_certificate_validation" "vpn_certificate_validation" {
  certificate_arn         = aws_acm_certificate.vpn_certificate.arn
  validation_record_fqdns = [aws_route53_record.vpn_record.fqdn]
}
# Management of Gitlab certificates
resource "aws_acm_certificate" "gitlab_certificate" {
  domain_name       = var.gitlab_domain
  validation_method = "DNS"
}

# Validating Gitlab certificates
resource "aws_acm_certificate_validation" "gitlab_certificate_validation" {
  certificate_arn         = aws_acm_certificate.gitlab_certificate.arn
  validation_record_fqdns = [aws_route53_record.gitlab_record.fqdn]
}

# Management of shared certificates, if necessary
resource "aws_acm_certificate" "shared" {
  domain_name       = var.shared_domain
  validation_method = "DNS"
  # Options supplémentaires selon les besoins
}

# Validating shared certificates
resource "aws_acm_certificate_validation" "shared" {
  certificate_arn         = aws_acm_certificate.shared.arn
  validation_record_fqdns = [aws_route53_record.shared_validation.fqdn