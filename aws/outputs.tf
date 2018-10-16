output "ansible_consul_servers" {
  value = "${module.consul_servers.public_ip}"
}

output "ansible_prometheus_server" {
  value = "${module.prometheus.public_ip}"
}

output "ansible_collins_server" {
  value = "${module.collins.public_ip}"
}
