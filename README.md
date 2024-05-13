# Infrastructure Terraform

## Description
Ce projet Terraform configure une infrastructure AWS comprenant un réseau VPC, des sous-réseaux, un Application Load Balancer, des enregistrements DNS et des certificats SSL pour sécuriser les communications.

## Modules
- **Network**: Configure le VPC, les subnets et les security groups.
- **Load Balancer**: Configure l'ALB, les listeners et les target groups.
- **DNS**: Gère les enregistrements DNS pour le domaine via AWS Route 53.
- **Certificates**: Gère les certificats SSL pour le VPN et GitLab.

## Utilisation
Pour déployer l'infrastructure, assurez-vous que vos identifiants AWS sont configurés correctement et exécutez les commandes suivantes :

```bash
terraform init
terraform plan
terraform apply