
# --- Terraform Settings Block ---
# Define the Terraform version constraints and required providers.

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.30.0" 
    }
  }
}




# --- DigitalOcean Provider Configuration ---
# Configure the DigitalOcean provider with authentication details.


provider "digitalocean" {
  token = var.do_token # Uses the token stored in the 'do_token' variable
}
