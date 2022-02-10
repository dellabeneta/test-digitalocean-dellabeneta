resource "digitalocean_ssh_key" "dellabeneta" {
  name       = "dellabeneta"
  public_key = file("C:/Users/Administrador/.ssh/id_rsa.pub")
}