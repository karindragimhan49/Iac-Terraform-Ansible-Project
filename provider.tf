
# --- Terraform Settings Block ---
# Define the Terraform version constraints and required providers.

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean" # Specifies the provider source (DigitalOcean)
      version = "~> 2.0"                   # Specifies to use version 2.x of the provider
    }
  }
}




# --- DigitalOcean Provider Configuration ---
# Configure the DigitalOcean provider with authentication details.


provider "digitalocean" {
  token = var.do_token # Uses the token stored in the 'do_token' variable
}
