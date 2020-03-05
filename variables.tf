variable "region" {
  default = "eu-west-2"
}

variable "acces_key" {}

variable "secret_key" {}

variable "vpc_cidr" {
  description = "CIDR main VPC"
  type        = "string"
  default     = "10.0.0.0/16"
}
