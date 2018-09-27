variable "pub_key" {
  description = "Public key for hosts to use."
}

variable "ami_id" {
  description = "ami id to launch"
}

variable "count" {
  description = "count of servers to launch"
  default     = 1
}


variable "tags" {
  description = "tags"
  default = {
    Owner = "lukeg"
    Created-By = "Terraform"

  }
}

variable "type" {
  description = "type of server"
  default = "t2.micro"
}
