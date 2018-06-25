data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "${var.remote_state_path}"
  }
}

output "public_ip" {
  value = "${data.terraform_remote_state.vpc.public_ip}"
}
