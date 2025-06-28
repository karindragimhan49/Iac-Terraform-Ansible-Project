# Varible for DigitalOcean API Token 

variable "do_token" {
  description = "The DigitalOcean API token."
  type        = string
  sensitive   = true # when add this doesnt print token in terminal 
}

# varible for droplet region

variable "droplet_region" {
  description = "The region to create the Droplet in."
  type        = string
  default     = "sgp1" # can add any region 
}


#Varible for SSH Public Key path

variable "ssh_public_key_path" {
  description = "The file path to the SSH public key."
  type        = string
  default     = "~/.ssh/iac_ansible_key.pub" 
}