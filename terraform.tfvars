# Exemple de valeurs pour terraform.tfvars

# Network Module Variables
vpc_cidr = "10.0.0.0/16"
subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
map_public_ip_on_launch = true

# Load Balancer Module Variables
# Ces valeurs devraient être définies dynamiquement ou obtenues par d'autres moyens si nécessaire
security_group_id = "sg-01234abcd"  # Fictif, remplacez par votre ID de groupe de sécurité réel
certificate_arn = "arn:aws:acm:us-west-2:123456789012:certificate/abcd1234-abcd-1234-abcd-1234abcd1234"  # Fictif

# DNS Module Variables
zone_id = "Z2K1234567890"  # Fictif, remplacez par votre Zone ID réelle

# Certificates Module Variables
vpn_domain = "vpn.example.com"
gitlab_domain = "gitlab.example.com"
