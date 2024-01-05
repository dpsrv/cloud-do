resource "digitalocean_volume" "data" {
  region                  = var.DO_REGION
  name                    = "data"
  size                    = 100
  initial_filesystem_type = "ext4"
  description             = "Data Volume"
}

resource "digitalocean_volume_attachment" "data" {
  droplet_id = digitalocean_droplet.dpsrv.id
  volume_id  = digitalocean_volume.data.id
}
