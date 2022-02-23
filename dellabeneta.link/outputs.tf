output "droplets_ips" {
  value = digitalocean_droplet.server[*].ipv4_address
}

output "load_balancer_ip" {
  value = digitalocean_loadbalancer.loadbalancer.ip
}

output "database_name" {
  value = digitalocean_database_db.database.name
}

output "database_username" {
  value = digitalocean_database_user.username.name
}

output "database_password" {
  value     = digitalocean_database_user.username.password
  sensitive = true
}

output "database_uri" {
  value     = digitalocean_database_cluster.dbcluster.uri
  sensitive = true
}

output "digitalocean_vpc" {
  value = [digitalocean_vpc.vpc_link.ip_range,
    digitalocean_vpc.vpc_link.description
  ]
}