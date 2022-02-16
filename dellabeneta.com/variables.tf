variable "do_token" {
  default = "DIGITALOCEAN_TOKEN"
}

variable "project_region" {
  type        = string
  description = "Regiao dos Recursos do Projeto."
  default     = "nyc1"
}

variable "droplet_image" {
  type        = string
  description = "Imagem utilizada para o S.O.."
  default     = "ubuntu-20-04-x64"
}

variable "droplet_size" {
  type        = string
  description = "Tipo ou Tamanho da Instância - Hardware dos Servidores."
  default     = "s-1vcpu-1gb"
}

variable "droplet_names" {
  type        = list(string)
  description = "Hostname dos Servidores - Droplets."
  default     = ["websrv-01-com", "websrv-02-com"]
}
variable "lb_name" {
  type        = string
  description = "Nome do Load Balance dos Servidores."
  default     = "loadbalancer-com"
}

variable "cluster_version" {
  type        = string
  description = "Versão do MySQL utilizada no Cluster."
  default     = "8"
}

variable "cluster_size" {
  type        = string
  description = "Tipo ou Tamanho da Instância - Hardware para o Cluster MySQL."
  default     = "db-s-1vcpu-1gb"
}

variable "cluster_engine" {
  type        = string
  description = "Motor - Engine para o SBGD MySQL."
  default     = "mysql"
}

variable "cluster_nodes_count" {
  type        = number
  description = "Número de Nodes do Cluster do MySQL."
  default     = 1
}

variable "cluster_name" {
  type        = string
  description = "Nome do Cluster de MySQL."
  default     = "dbcluster-com"
}

variable "database" {
  type        = string
  description = "Nome da Base de Dados do Site dentro do Cluster."
  default     = "app-database-com"
}

variable "username" {
  type        = string
  description = "Nome de Usuário de Acesso à Base de Dados."
  default     = "app-username-com"
}

variable "firewall_name" {
  type        = string
  description = "Nome do Firewall utilizado pelos servidores."
  default     = "firewall-com"
}

variable "vpc_name" {
  type        = string
  description = "Nome da VPC utilizada pelos recursos."
  default     = "vpc-com"
}