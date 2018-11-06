provider aws {
  region = "eu-west-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "${var.pub_key}"
}

data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

module "consul_servers" {
  source  = "./server"
  name    = "Consul-Servers"
  pub_key = "${aws_key_pair.deployer.key_name}"
  ami_id  = "${data.aws_ami.amazon-linux-2.id}"
  count   = 3

  tags = {
    Role = "consul"
  }
}

module "prometheus" {
  source  = "./server"
  name    = "prometheus"
  pub_key = "${aws_key_pair.deployer.key_name}"
  ami_id  = "${data.aws_ami.amazon-linux-2.id}"
}
