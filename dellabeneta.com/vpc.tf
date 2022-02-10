resource "digitalocean_vpc" "vpc_com" {
  name        = var.vpc_name
  region      = var.project_region
  ip_range    = "10.0.0.0/16"
  description = "Rede Privada Virtual para a comunicação entre os recursos provisionados nesta infraestrutura. EUA - Nova Iorque (1). dellabeneta.com."
}