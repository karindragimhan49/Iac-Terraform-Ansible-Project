# --- SSH Key Resource ---
# අපේ local public key එක DigitalOcean එකට upload කරනවා.

resource "digitalocean_ssh_key" "main_ssh_key" {
  name       = "MERN Project SSH Key"
  public_key = file(var.ssh_public_key_path) # variable එකේ තියෙන path එකෙන් file එක කියවනවා
}

# --- Droplet (Server) Resource ---
# DigitalOcean එකේ server එකක් හදනවා.
resource "digitalocean_droplet" "mern_server" {
  image  = "ubuntu-22-04-x64"             # Operating System එක
  name   = "mern-prod-server-01"            # Server එකේ නම
  region = var.droplet_region             # Variable එකෙන් region එක ගන්නවා
  size   = "s-1vcpu-1gb"                  # Server එකේ size එක (Basic Droplet)
  
  # කලින් හදපු SSH key එක මේ server එකට add කරනවා.
  ssh_keys = [digitalocean_ssh_key.main_ssh_key.id] 
}