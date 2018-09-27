resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.type}"
  count         = "${var.count}"
  key_name      = "${var.pub_key}"

  tags = "${var.tags}"
}
