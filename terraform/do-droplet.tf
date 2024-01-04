resource "digitalocean_droplet" "web" {
  name   = "dpsrv-do-1"
  image  = "fedora-39-x64"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
}
