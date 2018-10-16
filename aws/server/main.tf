locals {
  merged_tags = "${merge(var.tags, map("Name", var.name))}"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  count         = "${var.count}"
  key_name      = "${var.pub_key}"

  tags = "${local.merged_tags}"
}
