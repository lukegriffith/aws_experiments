output "ansible_consul_servers" {
  value = "${module.consul_servers.private_ip}"
}

output "ansible_consul_agents" {
  value = "${module.hosts.private_ip}"
}

output "ansible_docker_host" {
  value = "${module.hosts.private_ip[0]}"
}
