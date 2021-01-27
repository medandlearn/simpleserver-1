# plugin for hetzner cloud
#
terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
  }
  required_version = ">= 0.13"
}

# parameter for hetzner cloud provisioner
#
provider "hcloud" {
  token = var.access_token
}

# virtual machine resource
#
resource "hcloud_server" "simpleserver" {
  name        = var.server_name
  image       = var.server_image
  server_type = var.server_type
  location    = var.server_location
  labels      = var.labels
  ssh_keys    = [ var.keyname ]
  user_data   = templatefile (
                      "${path.module}/user-data-server.mm",
                        {
                        admin_user          = var.admin_user
                        ssh_key             = var.ssh_key
                        }
                      )
}
