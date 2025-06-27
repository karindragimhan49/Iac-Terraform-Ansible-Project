# --- SSH Key Resource ---


resource "digitalocean_ssh_key" "main_ssh_key" {
  name       = "MERN Project SSH Key"
  public_key = file(var.ssh_public_key_path) # read file by using varible path
}

# --- Droplet (Server) Resource ---

resource "digitalocean_droplet" "mern_server" {
  image  = "ubuntu-22-04-x64"             # Operating System 
  name   = "mern-prod-server-01"            # Server name
  region = var.droplet_region             # Get droplet_region from variable
  size   = "s-1vcpu-1gb"                  # Server size (Basic Droplet)
  
  # add ssh key to this server before made 
  
  ssh_keys = [digitalocean_ssh_key.main_ssh_key.id] 
}