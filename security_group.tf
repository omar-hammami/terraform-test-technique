resource "aws_security_group" "alb" {
  name        = "Private ALB - Security Group"
  description = "General rules for ALB Interconnexion"
  vpc_id      = data.aws_vpc.shared.id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks = ["192.168.100.0/24"]  // Example of a more restrictive range
    //ipv6_cidr_blocks = ["2600:1f18:1234::/56"]  // Example of a more restrictive IPv6 range
    description      = "Permit all outbound traffic to internal network segments"
  }

  tags = {
    Name = "Private ALB - Security Group"
  }
}
