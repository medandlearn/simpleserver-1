variable "server_name" {
  description = "The name of the server as it appears in Hetzner Cloud."
  type        = string
}

variable "server_image" {
    description = "The image ID that will be used to create the instance"
    type = string
}

variable "server_type" {
    description = "The Hetzner server type that will be used to create the instance"
    type = string
}

variable "server_location" {
    description = "The Hetzner location code that will be used to create the instance"
    type = string
}

variable "labels" {
    description = "Labels that are set at the instance"
    type = map(string)
}

variable "access_token" {
    description = "The Hetzner cloud access token"
    type = string
}

variable "admin_user" {
    description = "The user name that will have admin access"
    type = string
}

variable "ssh_key" {
    description = "The public key that will be used to check ssh access"
    type = string
}
