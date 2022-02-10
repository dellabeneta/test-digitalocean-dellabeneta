resource "digitalocean_certificate" "certcom" {
  name       = "certcom"
  type       = "lets_encrypt"
  domains    = ["dellabeneta.com"]
  depends_on = [digitalocean_domain.com]
}