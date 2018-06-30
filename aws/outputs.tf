output "ansible_consul_servers" {
  value = "${module.consul_servers.public_ip}"
}

output "ansible_consul_agents" {
  value = "${module.hosts.public_ip}"
}

output "ansible_consul_master" {
  value = "${module.consul_servers.public_ip[0]}"
}
