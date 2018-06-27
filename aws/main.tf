provider aws {
  region = "eu-west-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4sM8tsJZ9MLHMqmxcFpq9IPDuOqsYNOgY7RILou25xj+qZGL6RmAClsGOTh/l5BREx8Ue31yvHkw82tvP+pQ2hgw3MkBDEU2Nq1WV+k74bUXxptZ/MUWq/qUyKXymvbSrdM4mFOdwi8HWF+5XMUvI1CIbxV6Xbrv673FudKNYNP4/9xZ1wxmUnCHTKyfBn28z4K/IQLGeM0Q6Dzjou1M2pEusziXxyo/F8M7IRpHwwMVGPmqKAJagfadGgiYyUb4mEDIL5CSTNMr6dseyQ1UHa2xGCl8qEmk9o8hQQ7mz2zXge1EnQCIg5oeZfGwVGpe+cO1zU0a7T22B6g+9i6s5 luke@Lukes-MBP"
}

// ami ID can be driven by consul.
data "aws_ami" "LinuxAMI" {
  most_recent = true

  filter {
    name   = "name"
    values = ["centos-7*"]
  }

  owners = ["895883528040"]
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.LinuxAMI.id}"
  instance_type = "t2.micro"
  count         = 3
  key_name      = "${aws_key_pair.deployer.key_name}"

  tags {
    Created-By = "Terraform"
  }
}
