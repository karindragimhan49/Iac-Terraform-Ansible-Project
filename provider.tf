
# --- Terraform Settings Block ---
# Define the Terraform version constraints and required providers.

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.25.0" # <-- අපි version එක හරියටම මේකට pin කරනවා
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}


# --- DigitalOcean Provider Configuration ---
# Configure the DigitalOcean provider with authentication details.


provider "digitalocean" {
  token = var.do_token # Uses the token stored in the 'do_token' variable
}
