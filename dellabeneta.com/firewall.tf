resource "digitalocean_firewall" "firewall_com" {
  name = var.firewall_name
  droplet_ids = digitalocean_droplet.server[*].id

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol                  = "tcp"
    port_range                = 80
    source_load_balancer_uids = [digitalocean_loadbalancer.loadbalancer.id]
  }

  inbound_rule {
    protocol                  = "tcp"
    port_range                = 443
    source_load_balancer_uids = [digitalocean_loadbalancer.loadbalancer.id]
  }

  inbound_rule {
    protocol         = "icmp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}


resource "digitalocean_database_firewall" "firewall_cluster" {
  cluster_id = digitalocean_database_cluster.dbcluster.id
  
  rule {
    type  = "tag"
    value = "webserver"
  }
}