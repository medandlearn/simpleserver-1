provider "hcloud" {
  token = var.access_token
}

resource "hcloud_server" "simpleserver" {
  name        = var.server_name
  image       = var.server_image
  server_type = var.server_type
  location    = var.server_location
  labels      = var.labels
  ssh_keys    = [ var.ssh_key ]
  user_data   = templatefile (
                      "${path.module}/user-data-server.mm",
                        {
                        admin_user          = var.admin_user
                        ssh_key             = var.ssh_key
                        }
                      )
}
