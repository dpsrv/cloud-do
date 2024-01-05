resource "digitalocean_droplet" "dpsrv" {
  name   = "dpsrv"
  image  = "fedora-39-x64"
  region = var.DO_REGION
  size   = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.dpsrv.fingerprint]
}
