resource "digitalocean_ssh_key" "dpsrv" {
  name       = "dpsrv"
  public_key = file("~/.ssh/id_rsa.pub")
}
