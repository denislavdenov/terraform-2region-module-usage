variable "aws_access_key" {
}

variable "aws_secret_key" {
}

variable "ami" {
  type        = map(string)
  description = "Datacenter name of the Consul cluster"

  default = {
    "west" = "ami-06d51e91cea0dac8d"
    "east" = "ami-04b9e92b5572fa0d1"
  }
}
