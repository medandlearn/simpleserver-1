output "server_ip" {
  value       = hcloud_server.simpleserver.ipv4_address
  description = "The host IP of the server"
}
