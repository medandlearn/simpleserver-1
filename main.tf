resource "hcloud_server" "simpleserver" {
  name        = var.server_name
  image       = var.server_image
  server_type = var.server_type
  location    = var.server_location
  labels      = var.labels
  ssh_keys    = [ var.ssh_key ]
  user_data   = "${path.module}/user-data-server.mm"
}
