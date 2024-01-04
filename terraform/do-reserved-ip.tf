resource "digitalocean_reserved_ip" "dpsrv" {
  region     = digitalocean_droplet.dpsrv.region
}

resource "digitalocean_reserved_ip_assignment" "dpsrv" {
  ip_address = digitalocean_reserved_ip.dpsrv.ip_address
  droplet_id = digitalocean_droplet.dpsrv.id
}
