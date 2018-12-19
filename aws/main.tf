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
  name    = "ConsulMasters"
  pub_key = "${aws_key_pair.deployer.key_name}"
  ami_id  = "${data.aws_ami.amazon-linux-2.id}"
  count   = 3
  subnet_id = "subnet-0feb21e59626aa1f8"

  tags = {
    Role = "consul"
    Type = "master"
  }
}



module "prometheus" {
  source  = "./server"
  name    = "prometheus"
  pub_key = "${aws_key_pair.deployer.key_name}"
  ami_id  = "${data.aws_ami.amazon-linux-2.id}"
  subnet_id = "subnet-0feb21e59626aa1f8"
}
