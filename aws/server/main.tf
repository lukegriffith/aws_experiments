locals {
  merged_tags = "${merge(var.tags, map("Name", var.name))}"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.type}"
  count         = "${var.count}"
  key_name      = "${var.pub_key}"

  tags = "${local.merged_tags}"
}
