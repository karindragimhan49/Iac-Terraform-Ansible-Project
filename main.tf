
data "digitalocean_ssh_key" "existing_key" {
  name = "iac-ansible-key" 
}

resource "digitalocean_droplet" "mern_server" {
  image    = "ubuntu-22-04-x64"
  name     = "mern-prod-server-01"
  region   = var.droplet_region
  size     = "s-1vcpu-512mb-10gb"
  

  ssh_keys = [data.digitalocean_ssh_key.existing_key.id] 
}