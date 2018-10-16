output "ansible_consul_servers" {
  value = "${module.consul_servers.private_ip}"
}

<<<<<<< HEAD
output "ansible_prometheus_server" {
  value = "${module.prometheus.public_ip}"
}

output "ansible_collins_server" {
  value = "${module.collins.public_ip}"
=======
output "ansible_consul_agents" {
  value = "${module.hosts.private_ip}"
}

output "ansible_docker_host" {
  value = "${module.hosts.private_ip[0]}"
>>>>>>> 49d363a0b22002553279f21625558678865b2c72
}
