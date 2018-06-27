data "consul_nodes" "read-nodes-eu-west-1" {
  query_options {
    # Optional parameter: implicitly uses the current datacenter of the agent
    datacenter = "eu-west-1"
  }
}

data "consul_service" "read-consul-eu-west-1" {
  query_options {
    # Optional parameter: implicitly uses the current datacenter of the agent
    datacenter = "dc1"
  }

  name = "consul"
}
