resource "digitalocean_droplet" "server" {
  region   = var.project_region
  image    = var.droplet_image
  name     = var.droplet_names[count.index]
  size     = var.droplet_size
  ssh_keys = [digitalocean_ssh_key.dellabeneta.id]
  count    = length(var.droplet_names)
  vpc_uuid = digitalocean_vpc.vpc_com.id

  connection {
    host        = self.ipv4_address
    type        = "ssh"
    user        = "root"
    private_key = file("C:/Users/Administrador/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = ["sleep 10", "apt install apache2 -y"]
  }
}