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
  default     = "sgp1" # Singapore. ඔයාට කැමති region එකක් දෙන්න පුළුවන් (e.g., blr1, nyc1)
}


#Varible for SSH Public Key path

variable "ssh_public_key_path" {
  description = "The file path to the SSH public key."
  type        = string
  default     = "~/.ssh/id_ed25519_digitalocen.pub" # කලින් project එකට පාවිච්චි කරපු key එකේ public path එක
}