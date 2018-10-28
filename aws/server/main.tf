locals {
  local_tags = {
    Created-By = "Terraform"
    Owner      = "Luke"
    Name       = "${var.name}"
  }
  merged_tags = "${merge(var.tags, local.local_tags)}"

}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.type}"
  count         = "${var.count}"
  key_name      = "${var.pub_key}"

  tags = "${local.merged_tags}"
}
