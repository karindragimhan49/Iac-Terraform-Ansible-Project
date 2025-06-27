# --- Data Source for an Existing SSH Key ---

data "digitalocean_ssh_key" "existing_ssh_key" {
  name = "ssh"
}

# --- Droplet (Server) Resource ---

resource "digitalocean_droplet" "mern_server" {
  image    = "ubuntu-22-04-x64"
  name     = "mern-prod-server-01"
  region   = var.droplet_region
  size     = "s-1vcpu-1gb"
  
  
  ssh_keys = [data.digitalocean_ssh_key.existing_ssh_key.id] 
}