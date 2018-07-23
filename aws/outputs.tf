output "ansible_consul_servers" {
  value = "${module.consul_servers.public_ip}"
}

output "ansible_consul_agents" {
  value = "${module.hosts.public_ip}"
}

output "ansible_prometheus_server" {
  value = "${module.hosts.public_ip[0]}"
}

output "ansible_docker_host" {
  value = "${module.hosts.public_ip[1]}"
}
