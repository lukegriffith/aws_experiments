output "nodes" {
  value = "${data.consul_nodes.read-nodes-eu-west-1.node_names}"
}

output "consul_service" {
  value = "${data.consul_service.read-consul-eu-west-1.name}"
}
