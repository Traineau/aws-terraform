variable "region" {
  description = "AWS Region for all resources"
  type        = "string"
  default     = "eu-west-2"
}

variable "bastion_local_key_path" {
  description = "Local path to the bastion key"
  type        = "string"
  default     = "~/.ssh/hetic-bastion.pem"
}

variable "vpc_cidr" {
  description = "CIDR main VPC"
  type        = "string"
  default     = "10.0.0.0/16"
}

variable "bastion_key_name" {
  description = "Name of the keypair for Bastion host"
  type        = "string"
  default     = "HETIC_Bastion"
}

variable "acces_key" {}

variable "secret_key" {}
