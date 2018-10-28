variable "pub_key" {
  description = "Public key for hosts to use."
}

variable "ami_id" {
  description = "ami id to launch"
}

variable "tags" {
  description = "Tags to apply"
  type        = "map"

  default = {}
}

variable "name" {
  description = "Value to apply to the name tag."
  type        = "string"
}

variable "count" {
  description = "count of servers to launch"
  default     = 1
}


variable "type" {
  description = "type of server"
  default = "t2.micro"
}
